package com.project.opggapp.activity;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.google.gson.Gson;
import com.project.opggapp.R;
import com.project.opggapp.model.User;
import com.project.opggapp.model.dto.LoginDto;
import com.project.opggapp.task.RestAPIComm;

public class SignupActivity extends AppCompatActivity {

    Toolbar toolbar;
    TextView tText;
    EditText etEmail, etNickname, etPassword1, etPassword2;
    Button btnSignUp;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_signup);

        //툴바
        toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        tText = toolbar.findViewById(R.id.toolbar_text);

        etEmail = findViewById(R.id.signUp_et_inputEmail);
        etEmail.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                Toast.makeText(getApplicationContext(), "서버통신 ㄱㄱ 검사", Toast.LENGTH_SHORT).show();
                return true;
            }
        });
        etNickname = findViewById(R.id.signUp_et_inputNickname);
        etPassword1 = findViewById(R.id.signUp_et_inputPassword1);
        etPassword2 = findViewById(R.id.signUp_et_inputPassword2);
        btnSignUp = findViewById(R.id.signUp_btn_signUp);
        btnSignUp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String email = etEmail.getText().toString();
                String nickname = etNickname.getText().toString();
                String password1 = etPassword1.getText().toString();
                String password2 = etPassword2.getText().toString();

                if(email.isEmpty() || nickname.isEmpty() || password1.isEmpty() || password2.isEmpty()){
                    AlertDialog.Builder builder = new AlertDialog.Builder(view.getContext());
                    builder.setMessage("값을 모두 입력해주세요.");
                    builder.setPositiveButton("완료", null);
                    AlertDialog alertDialog = builder.create();
                    alertDialog.show();
                    return;
                }

                RestAPIComm comm = new RestAPIComm();
                String[] result = new String[2];
                User user = new User();
                Gson gson = new Gson();

                user.setEmail(email);
                user.setUsername(email);
                user.setNickname(nickname);
                user.setPassword(password1);

                try {
                    result = comm.execute("app/signUp", gson.toJson(user)).get();
                } catch (Exception e) {
                    e.printStackTrace();
                    Toast.makeText(getApplicationContext(), "서버 통신 실패", Toast.LENGTH_SHORT).show();
                }
                if(result[0].equals("ok")){
                    finish();
                    Toast.makeText(getApplicationContext(), "회원가입 성공", Toast.LENGTH_SHORT).show();
                }else if(result[0].equals("no")){
                    Toast.makeText(getApplicationContext(), "회원가입 실패 - " + result[1], Toast.LENGTH_SHORT).show();
                }else{
                    Toast.makeText(getApplicationContext(), "회원가입 실패 - " + result[1], Toast.LENGTH_SHORT).show();
                }
            }
        });
    }

    //앱바 메뉴 인플레이션
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true); // 뒤로가기 버튼, 디폴트로 true만 해도 백버튼이 생김
        tText.setText("회원가입");
        return true;
    }

    //앱바 뒤로가기 설정
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()){
            case android.R.id.home:{ //toolbar의 back키 눌렀을 때 동작
                finish();
                return true;
            }
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    public void onBackPressed() {
        return;
    }
}