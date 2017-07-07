package com.example.ganedu.web_view;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void goURL(View view){
        TextView txURL = (TextView)findViewById(R.id.txtURL);
        String url = txURL.getText().toString();

        WebView webView  = (WebView)findViewById(R.id.webView);

        WebSettings webSettings  =  webView.getSettings();
        //webSettings.setJavaScriptEnabled(true);// 왭에서 자바 스크립트 허용

        webView.setWebViewClient(new WebViewClient()); //새창이 뜨는 것을 방지
        webView.loadUrl(url);
    }
}
