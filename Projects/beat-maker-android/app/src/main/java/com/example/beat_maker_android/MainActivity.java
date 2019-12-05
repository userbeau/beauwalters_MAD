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
import android.widget.ToggleButton;

public class MainActivity extends AppCompatActivity {

    Button button1;
    Button button2;
    Button button3;
    Button button4;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        button1 = (Button)findViewById(R.id.eight);
        button2 = (Button)findViewById(R.id.cowbell);
        button3 = (Button)findViewById(R.id.highhat);
        button4 = (Button)findViewById(R.id.kick);
        final MediaPlayer mp1 = MediaPlayer.create(this, R.raw.eight);
        final MediaPlayer mp2 = MediaPlayer.create(this, R.raw.cowbell);
        final MediaPlayer mp3 = MediaPlayer.create(this, R.raw.highhat);
        final MediaPlayer mp4 = MediaPlayer.create(this, R.raw.kick);


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
        }

    }


