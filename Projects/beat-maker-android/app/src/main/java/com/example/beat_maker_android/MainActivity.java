// Sources:
// https://developer.android.com/guide/topics/media/mediaplayer
// https://stackoverflow.com/questions/18459122/play-sound-on-button-click-android
// https://stackoverflow.com/questions/26538421/how-do-i-play-sound-on-button-click-in-android-studio



package com.example.beat_maker_android;

import androidx.appcompat.app.AppCompatActivity;
import android.media.MediaPlayer;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.ToggleButton;

public class MainActivity extends AppCompatActivity {

    private Button button1;
    private Button button2;
    private Button button3;
    private Button button4;
    private Button button5;
    private Button button6;
    private Button button7;
    private Button button8;
    private MediaPlayer mp1;
    private MediaPlayer mp2;
    private MediaPlayer mp3;
    private MediaPlayer mp4;
    private MediaPlayer mp5;
    private MediaPlayer mp6;
    private MediaPlayer mp7;
    private MediaPlayer mp8;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        button1 = findViewById(R.id.eight);
        button2 = findViewById(R.id.cowbell);
        button3 = findViewById(R.id.highhat);
        button4 = findViewById(R.id.kick);
        button5 = findViewById(R.id.piano1);
        button6 = findViewById(R.id.piano2);
        button7 = findViewById(R.id.piano3);
        button8 = findViewById(R.id.piano4);
        mp1 = MediaPlayer.create(this, R.raw.eight);
        mp2 = MediaPlayer.create(this, R.raw.cowbell);
        mp3 = MediaPlayer.create(this, R.raw.highhat);
        mp4 = MediaPlayer.create(this, R.raw.kick);
        mp5 = MediaPlayer.create(this, R.raw.piano1);
        mp6 = MediaPlayer.create(this, R.raw.piano2);
        mp7 = MediaPlayer.create(this, R.raw.piano3);
        mp8 = MediaPlayer.create(this, R.raw.piano4);
        button1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mp1.start();
            }
        });

        button2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mp2.start();
            }
        });

        button3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mp3.start();
            }
        });

        button4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mp4.start();
            }
        });

        button5.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mp5.start();
            }
        });
        button6.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mp6.start();
            }
        });
        button7.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mp7.start();
            }
        });
        button8.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mp8.start();
            }
        });


        button5.setVisibility(View.GONE);
        button6.setVisibility(View.GONE);
        button7.setVisibility(View.GONE);
        button8.setVisibility(View.GONE);
        }


    public void onRadioButtonClicked(View view) {
        // Is the button now checked?
        boolean checked = ((RadioButton) view).isChecked();

        // Check which radio button was clicked
        switch(view.getId()) {
            case R.id.drums:
                if (checked)
                button5.setVisibility(View.GONE);
                button6.setVisibility(View.GONE);
                button7.setVisibility(View.GONE);
                button8.setVisibility(View.GONE);
                button1.setVisibility(View.VISIBLE);
                button2.setVisibility(View.VISIBLE);
                button3.setVisibility(View.VISIBLE);
                button4.setVisibility(View.VISIBLE);
                break;
            case R.id.piano:
                if (checked)

                button1.setVisibility(View.GONE);
                button2.setVisibility(View.GONE);
                button3.setVisibility(View.GONE);
                button4.setVisibility(View.GONE);
                button5.setVisibility(View.VISIBLE);
                button6.setVisibility(View.VISIBLE);
                button7.setVisibility(View.VISIBLE);
                button8.setVisibility(View.VISIBLE);

                break;
        }
    }

    }

