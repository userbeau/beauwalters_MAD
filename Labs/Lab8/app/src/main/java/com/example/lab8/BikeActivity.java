package com.example.lab8;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.util.Log;
import android.view.View;
import android.widget.TextView;

public class BikeActivity extends AppCompatActivity {
    private String bikeShop;
    private String bikeShopURL;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_bike);
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        FloatingActionButton fab = findViewById(R.id.fab);
        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                loadWebSite(view);
            }
        });


        //get intent
        Intent intent = getIntent();
        bikeShop = intent.getStringExtra("bikeShopName");
        bikeShopURL = intent.getStringExtra("bikeShopURL");
        Log.i("shop received", bikeShop);
        Log.i("url received", bikeShopURL);
        //update text view
        TextView messageView = findViewById(R.id.bikeShopTextView);
        messageView.setText("You should check out " + bikeShop);

    }

    private void loadWebSite(View view){
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(bikeShopURL));
        startActivity(intent);
    }

}
