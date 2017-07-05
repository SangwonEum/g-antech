package com.example.ganedu.myapplication;

import java.util.ArrayList;

import android.os.Bundle;
import android.app.Activity;
import android.content.Context;
import android.view.Menu;
import android.widget.ListView;

import android.widget.ListView;

public class MainActivity extends Activity {

   ListView listView;

    @Override
    public void onCreate(Bundle savedInstanceState){
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        ArrayList<MyCustomDTO> list = new ArrayList<MyCustomDTO>();
        list.add(new MyCustomDTO("dog","brown", R.drawable.dog));
        list.add(new MyCustomDTO("cat","yellow",R.drawable.cat));


        listView = (ListView) findViewById(R.id.listView1);
        MyCustomAdapter adapter = new MyCustomAdapter(
                getApplicationContext(),
                R.layout.list_row,
                list
        );
        listView.setAdapter(adapter);
    }


}
