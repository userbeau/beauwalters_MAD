package com.example.lab6;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;


public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void showText(View view) {

        //editText
        EditText name = findViewById(R.id.editText);
        String nameValue = name.getText().toString();

        //textView
        TextView nameText = findViewById(R.id.textView);
        nameText.setText(nameValue);

        //imageView
        ImageView image1 = findViewById(R.id.image1);
        image1.setImageResource(R.drawable.fedora);

    }
}
