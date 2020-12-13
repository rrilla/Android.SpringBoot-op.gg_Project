package com.project.opggapp.task;

import android.os.AsyncTask;
import android.util.Log;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

public class RestAPIComm extends AsyncTask<String, Object, String[]> {

    private String serverUrl = "http://" + IP.ip + ":8000/"; // 연결할 서버주소
    private String reqUrl = "";
    private String method = "POST";
    private String contentType = "application/json; charset=utf-8";
    private String severToken = null;
    private String reqData = "noData";
    private String resData = "noData";

    public RestAPIComm(){}

    public RestAPIComm(String reqUrl){
        this.reqUrl = reqUrl;
        this.serverUrl += reqUrl;
    }

    public RestAPIComm(String reqUrl, String severToken){
        this.reqUrl = reqUrl;
        this.serverUrl += reqUrl;
        this.severToken = severToken;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    @Override
    protected String[] doInBackground(String... strings) {
//        if(strings[0].equals("app/signUp")){
//            reqUrl = strings[0];
//            serverUrl += reqUrl;
//            reqData = strings[1];
//        }else if(strings[0].equals("app/login")){
//            reqUrl = strings[0];
//            serverUrl += reqUrl;
//            reqData = strings[1];
//        }else if(strings[0].equals("app/loginGoogle")){
//            reqUrl = strings[0];
//            serverUrl += reqUrl;
//            reqData = strings[1];
//        }else if(strings[0].equals("app/boardList")){
//            reqUrl = strings[0];
//            serverUrl += reqUrl;
//        }else if(strings[0].equals("app/summarySummoner")){
//            reqUrl = strings[0];
//            serverUrl += reqUrl + "?summoner=" + strings[1];
//        }else if(strings[0].equals("app/checkSummoner")){
//            reqUrl = strings[0];
//            serverUrl += reqUrl + "?summoner=" + strings[1];
//        }else if(strings[0].equals("app/detailSummoner")){
//            reqUrl = strings[0];
//            serverUrl += reqUrl + "?summoner=" + strings[1];
//        }

        try {
            String str = "";
            URL url = new URL(serverUrl);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            //Log.d("test","토큰대가리심음 : " + authorization);
            //conn.setRequestProperty("Authorization", authorization);   //토큰
            if(severToken != null){
                conn.setRequestProperty("Cookie", severToken);
            }
            conn.setRequestProperty("Content-Type", contentType);
            conn.setRequestMethod(method);
            OutputStreamWriter osw = new OutputStreamWriter(conn.getOutputStream(), "UTF-8");

            //파라메타 = 서버로 보낼 data 있을시
            if(strings.length != 0){
                reqData = strings[0];
                osw.write(reqData);
            }

            osw.flush();
            osw.close();

            if(conn.getResponseCode() == conn.HTTP_OK) {
                InputStreamReader tmp = new InputStreamReader(conn.getInputStream(), "UTF-8");
                BufferedReader reader = new BufferedReader(tmp);
                StringBuffer buffer = new StringBuffer();

                while ((str = reader.readLine()) != null) {
                    buffer.append(str);
                }
                resData = buffer.toString();

                //login요청일 때만 token추출
                if(reqUrl.equals("app/login") || reqUrl.equals("app/loginGoogle")){
                    List<String> cookies = conn.getHeaderFields().get("Set-Cookie");
                    //cookies -> [JSESSIONID=D3F829CE262BC65853F851F6549C7F3E; Path=/smartudy; HttpOnly] -> []가 쿠키1개임.
                    //Path -> 쿠키가 유효한 경로 ,/smartudy의 하위 경로에 위의 쿠키를 사용 가능.
                    if (cookies != null) {
                        for (String cookie : cookies) {
                            Log.e("test-token", cookie);
                            severToken = cookie.split(";\\s*")[0];
                        }
                    }
                    return new String[]{"ok", resData, severToken};
                }
                Log.d("통신데이터", "req body data : " + reqData);
                Log.d("통신데이터", "res body data : " + resData);
                return new String[]{"ok", resData};

            } else if(conn.getResponseCode() == conn.HTTP_CREATED) {
                InputStreamReader tmp = new InputStreamReader(conn.getInputStream(), "UTF-8");
                BufferedReader reader = new BufferedReader(tmp);
                StringBuffer buffer = new StringBuffer();

                while ((str = reader.readLine()) != null) {
                    buffer.append(str);
                }
                resData = buffer.toString();
                Log.d("통신데이터", "req body data : " + reqData);
                Log.d("통신데이터", "res body data : " + resData);
                return new String[]{"no", resData};

            } else {
                InputStreamReader tmp = new InputStreamReader(conn.getErrorStream(), "UTF-8");
                BufferedReader reader = new BufferedReader(tmp);
                StringBuffer buffer = new StringBuffer();

                while ((str = reader.readLine()) != null) {
                    buffer.append(str);
                }
                resData = buffer.toString();
                Log.e("통신데이터", "req body data : " + reqData);
                Log.e("통신데이터", "res body data : " + resData);
                Log.e("통신에러", "에러코드 - " + conn.getResponseCode());    //응답코드받기
                Log.e("통신에러", "에러메시지 - " + resData);    //응답메시지
                return new String[]{"error", resData};

            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
            return new String[]{"error", "서버 통신 오류"};
        } catch (IOException e) {
            e.printStackTrace();
            return new String[]{"error", "서버 통신 오류"};
        }
    }

}
