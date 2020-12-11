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

    public RestAPIComm(String severToken){
        this.severToken = severToken;
    }

    @Override
    protected String[] doInBackground(String... strings) {
        if(strings[0].equals("app/login")){
            reqUrl = strings[0];
            serverUrl += reqUrl;
            reqData = strings[1];
        }else if(strings[0].equals("app/loginGoogle")){
            reqUrl = strings[0];
            serverUrl += reqUrl;
            reqData = strings[1];
        }else if(strings[0].equals("app/test")){
            reqUrl = strings[0];
            serverUrl += reqUrl;
        }else if(strings[0].equals("user/test")){
            reqUrl = strings[0];
            serverUrl += reqUrl;
        }else if(strings[0].equals("app/battleList")){
            reqUrl = strings[0];
            serverUrl += reqUrl;
        }else if(strings[0].equals("app/battleList2/")){
            reqUrl = strings[0];
            serverUrl += reqUrl + strings[1];
        }else if(strings[0].equals("rank")){
            reqUrl = strings[0];
            serverUrl += reqUrl;
            method = "PUT";
        }else if(strings[0].equals("user/matchAccept/")){
            reqUrl = strings[0];
            serverUrl += reqUrl + strings[1];
            method = "PUT";
        }

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

            if(!reqData.equals("noData")){
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
                    return new String[]{resData, severToken};
                }

            } else {
                InputStreamReader tmp = new InputStreamReader(conn.getInputStream(), "UTF-8");
                BufferedReader reader = new BufferedReader(tmp);
                StringBuffer buffer = new StringBuffer();

                while ((str = reader.readLine()) != null) {
                    buffer.append(str);
                }

                resData = buffer.toString();

                Log.e("통신에러", "에러코드 - " + conn.getResponseCode());    //응답코드받기
                Log.e("통신에러", "에러메시지 - " + conn.getResponseMessage());    //응답메시지
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
            return new String[]{"서버 통신 오류"};
        } catch (IOException e) {
            e.printStackTrace();
            return new String[]{"서버 통신 오류"};
        }
        Log.d("통신데이터", "req body data : " + reqData);
        Log.d("통신데이터", "res body data : " + resData);
        return new String[]{resData};
    }

}
