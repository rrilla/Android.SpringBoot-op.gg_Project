package com.project.opggapp.activity;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;

import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.SignInButton;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.GoogleAuthProvider;
import com.google.gson.Gson;
import com.project.opggapp.R;
import com.project.opggapp.model.Join;
import com.project.opggapp.model.dto.LoginDto;
import com.project.opggapp.task.IP;
import com.project.opggapp.task.RestAPIComm;

public class LoginActivity extends AppCompatActivity {

    private SignInButton signInButton;
    private GoogleSignInClient mGoogleSignInClient;
    private String TAG = "mainTag";
    private FirebaseAuth mAuth;
    private int RC_SIGN_IN = 123;

    private SharedPreferences pref;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        //토큰있을시 = 로그인했을시 UserActivity 이동
        pref = getSharedPreferences("autoLogin",MODE_PRIVATE);
        String severToken = pref.getString("severToken","");
        if(!severToken.equals("")){
            Intent intent = new Intent(getApplication(), UserActivity.class);
            startActivity(intent);
            finish();
        }

        Button btnLogin = findViewById(R.id.login_btn_login);
        btnLogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                EditText email = findViewById(R.id.login_et_email);
                EditText password = findViewById(R.id.login_et_password);
                LoginDto data = new LoginDto();
                data.setPassword(password.getText().toString());
                data.setUsername(email.getText().toString());

                RestAPIComm comm = new RestAPIComm();
                Gson gson = new Gson();
                String[] result = new String[2];
                try {
                    Log.e("LoginActivity", "로그인 통신시작");
                    result = comm.execute("app/login", gson.toJson(data)).get();
                }catch (Exception e){
                    Toast.makeText(getApplicationContext(), "서버 통신 오류", Toast.LENGTH_SHORT).show();
                    e.printStackTrace();
                }
                if(result[0].equals("ok")){
                    autoLogin(data.getUsername(), data.getPassword(), result[1]);
                    finish();
                    Toast.makeText(getApplicationContext(), "로그인 성공", Toast.LENGTH_SHORT).show();
                }else{
                    Toast.makeText(getApplicationContext(), "로그인 실패 - " + result[1], Toast.LENGTH_SHORT).show();
                }
            }
        });

        ImageView btnClose = findViewById(R.id.login_iv_close);
        btnClose.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
                overridePendingTransition(R.anim.translate_down, R.anim.translate_down);
            }
        });

        signInButton = findViewById(R.id.SignIn_Button);

        // [START config_signin]
        // 구글 로그인 설정
        GoogleSignInOptions gso = new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN)
                .requestIdToken(getString(R.string.default_web_client_id))
                .requestEmail()
                .build();
        mGoogleSignInClient = GoogleSignIn.getClient(this, gso);
        // [END config_signin]

        // [START initialize_auth]
        // Firebase 인증 초기화
        mAuth = FirebaseAuth.getInstance();
        // [END initialize_auth]

//        //로그인 한번한 후 다음에 어플켰을시 바로 다음화면 전환
//        if (mAuth.getCurrentUser() != null) {
//            Intent intent2 = new Intent(getApplication(), UserActivity.class);
//            startActivity(intent2);
//            finish();
//        }

        //AccountManager am = AccountManager.get(this);
        //am.getAuthToken()
        signInButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                signIn();
            }
        });
    }

    // [START signin]
    private void signIn() {
        Intent signInIntent = mGoogleSignInClient.getSignInIntent();
        startActivityForResult(signInIntent, RC_SIGN_IN);
    }
    // [END signin]

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        // Result returned from launching the Intent from GoogleSignInApi.getSignInIntent(...);
        if (requestCode == RC_SIGN_IN) {
            Task<GoogleSignInAccount> task = GoogleSignIn.getSignedInAccountFromIntent(data);
            try {
                // Google Sign In was successful, authenticate with Firebase
                GoogleSignInAccount account = task.getResult(ApiException.class);
                firebaseAuthWithGoogle(account);
            } catch (ApiException e) {
                // Google Sign In failed, update UI appropriately
                Log.w(TAG, "Google sign in failed", e);
                Toast.makeText(getApplicationContext(), "Google sign in Failed", Toast.LENGTH_LONG).show();
            }
        }
    }

    // [START auth_with_google]
    private void firebaseAuthWithGoogle(GoogleSignInAccount acct) {
        Log.e("providerId", "firebaseAuthWithGoogle - " + acct.getId());
        // [START_EXCLUDE silent]
        //showProgressDialog();
        // [END_EXCLUDE]

        AuthCredential credential = GoogleAuthProvider.getCredential(acct.getIdToken(), null);
        mAuth.signInWithCredential(credential)
                .addOnCompleteListener(this, new OnCompleteListener<AuthResult>() {
                    @Override
                    public void onComplete(@NonNull Task<AuthResult> task) {
                        if (task.isSuccessful()) {
                            // Sign in success, update UI with the signed-in user's information
                            Log.d(TAG, "signInWithCredential:success");

                            FirebaseUser user = mAuth.getCurrentUser(); //유저 정보 얻기
                            updateUI(user);
                            Toast.makeText(getApplicationContext(), "로그인 성공", Toast.LENGTH_LONG).show();

                        } else {
                            // If sign in fails, display a message to the user.
                            Log.w(TAG, "signInWithCredential:failure", task.getException());
                            // Snackbar.make(findViewById(R.id.main_layout), "Authentication Failed.", Snackbar.LENGTH_SHORT).show();
                            Toast.makeText(getApplicationContext(), "Authentication Failed", Toast.LENGTH_LONG).show();

                            // updateUI(null);
                        }
                        // [START_EXCLUDE]
                        // hideProgressDialog();
                        // [END_EXCLUDE]
                    }
                });
    }
    // [END auth_with_google]

    //로그인 후 작업
    private void updateUI(FirebaseUser user) { //update ui code here
        if (user != null) {
//            Intent intent = new Intent(this, MainActivity.class);
//            startActivity(intent);

            RestAPIComm comm = new RestAPIComm();
            String[] result = new String[2];
            Gson gson = new Gson();
            Join join = new Join();
            join.setProviderId(mAuth.getCurrentUser().getProviderId());
            join.setUid(mAuth.getCurrentUser().getUid());
            join.setEmail(mAuth.getCurrentUser().getEmail());
            join.setName(mAuth.getCurrentUser().getDisplayName());

            try {
                Log.e("LoginActivity", "구글로그인 통신시작");
                result = comm.execute("app/loginGoogle", gson.toJson(join)).get();
            }catch (Exception e){
                Toast.makeText(getApplicationContext(), "서버 통신 오류", Toast.LENGTH_SHORT).show();
                e.printStackTrace();
            }
            if(result[0].equals("ok")){
                autoLogin(mAuth.getCurrentUser().getProviderId()+"_"+mAuth.getCurrentUser().getUid(),
                        IP.pw, result[1]);
                finish();
                Toast.makeText(getApplicationContext(), "로그인 성공", Toast.LENGTH_SHORT).show();
            }else{
                Toast.makeText(getApplicationContext(), "로그인 실패 - " + result[0], Toast.LENGTH_SHORT).show();
            }
        }
    }

    private void autoLogin(String id, String pw, String severToken){
        SharedPreferences.Editor editor = pref.edit();
        editor.putString("id", id);
        editor.putString("pw", pw);
        editor.putString("severToken", severToken);
        editor.commit();
    }

    @Override
    public void onBackPressed() {
        finish();
        overridePendingTransition(R.anim.translate_down, R.anim.translate_down);
    }

    private void revokeAccess() {
        // Firebase sign out
        mAuth.signOut();

        // Google revoke access
        mGoogleSignInClient.revokeAccess().addOnCompleteListener(this,
                new OnCompleteListener<Void>() {
                    @Override
                    public void onComplete(@NonNull Task<Void> task) {
                        Toast.makeText(getApplicationContext(), "Complete", Toast.LENGTH_LONG).show();
                    }
                });
    }
}