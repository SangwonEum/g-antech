package com.example.ganedu.intent;

import android.app.Activity;
import android.os.Bundle;
import android.widget.Button;

/**
 * Created by ganedu on 2017-07-05.
 */

public class ExActivity extends Activity {

    Button btnStart;

    @Override
    public void onCreate(Bundle savedInstanceState){
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_main);
    }
}
