package com.example.lab8;

import androidx.appcompat.app.AppCompatActivity;


import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Spinner;

public class MainActivity extends AppCompatActivity {

    private Button button;
    private Spinner bikeSpinner;
    private BikeShop myBikeShop = new BikeShop();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //get spinner
        bikeSpinner = findViewById(R.id.spinner); //get button
        button = findViewById(R.id.button);

        //create listener
        View.OnClickListener onclick = new View.OnClickListener(){
            public void onClick(View view){
                findBike(view);
            }
        };


        button.setOnClickListener(onclick);
    }

    private void findBike(View view){
//get spinner item array postion
        Integer crowd = bikeSpinner.getSelectedItemPosition();
//set the coffee shop
        myBikeShop.setBikeShop(crowd);
//get suggested coffee shop
        String suggestedBikeShop = myBikeShop.getBikeShop();
//get URL of suggested coffee shop
        String suggestedBikeShopURL = myBikeShop.getBikeShopURL();
        Log.i("shop suggested", suggestedBikeShop);
        Log.i("url suggested", suggestedBikeShopURL);
        //add listener to the button
        Intent intent = new Intent(this, BikeActivity.class);
        intent.putExtra("bikeShopName", suggestedBikeShop);
        intent.putExtra("bikeShopURL", suggestedBikeShopURL);
        startActivity(intent);
    }


}
