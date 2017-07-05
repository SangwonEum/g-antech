package com.example.codeback.helloworld;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.TextView;

import java.io.File;
import java.text.NumberFormat;


public class MainActivity extends AppCompatActivity {

    public static final int IMAGE_GALLERY_REQUEST = 20;
    private int quantity=0;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }


    /**
     * This method is called when the order button is clicked.
     */
    public void submitOrder(View view) {

        //displayPrice(5* quantity);
        // invoke the image gallery using an implicit intent.
        Intent intentPickerIntent = new Intent(Intent.ACTION_PICK);
        File pictureDirectory =Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
        String pictureDirectoryPath = pictureDirectory.getPath();
        //finally, get a URI representaion
        Uri data = Uri.parse(pictureDirectoryPath);

        intentPickerIntent.setDataAndType(data,"image/*");

        startActivityForResult(intentPickerIntent, IMAGE_GALLERY_REQUEST);

    }
    public void decrement(View view){
  //     int quantity = 3;
        display(--quantity);
    }
    public void increment(View view){
// quantity = 4;

        display(++quantity);
    }
    /**
     * This method displays the given quantity value on the screen.
     */
    private void display(int number) {
        TextView quantityTextView = (TextView) findViewById(R.id.quantity_value);
        quantityTextView.setText("" + number);
    }

    private void displayPrice(int number){
        TextView priceTextView = (TextView) findViewById(R.id.textView3);
        priceTextView.setText(NumberFormat.getCurrencyInstance().format(number));
    }
}
