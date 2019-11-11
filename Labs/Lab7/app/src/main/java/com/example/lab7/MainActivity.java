package com.example.lab7;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity<bikeS> extends AppCompatActivity {

    private RadioGroup biketype;
    private TextView bikeSelected;
    private Spinner miles;
    private ImageView image;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        biketype = findViewById(R.id.radioGroup);
        bikeSelected = findViewById(R.id.textView);
        miles = findViewById(R.id.spinner);
        image = findViewById(R.id.imageView);
    }

    public void showBike(View view) {
        int bike_id = biketype.getCheckedRadioButtonId();

        String numMiles = String.valueOf(miles.getSelectedItem());

        String bikeS = "";


            if (bike_id == -1) {
                //toast
                Context context = getApplicationContext();
                CharSequence text = "Please select a bike type";
                int duration = Toast.LENGTH_SHORT;

                Toast toast = Toast.makeText(context, text, duration);
                toast.show();
                bikeSelected.setText("");
            }else {
                if(bike_id == R.id.radioButton1){

                    //Mountain bike calculated at 10mph
                    switch (numMiles) {
                        case "10":
                            bikeS = "1";
                            break;
                        case "20":
                            bikeS = "2";
                            break;
                        case "30":
                            bikeS = "3";
                            break;
                        case "40":
                            bikeS = "4";
                            break;
                        case "50":
                            bikeS = "5";
                            break;
                         default:
                             bikeS = "defualt";
                    }
                    image.setImageResource(R.drawable.mtnbike);
                } else if (bike_id == R.id.radioButton2){

                    //road bike calculated at 15mph
                    switch (numMiles) {
                        case "10":
                            bikeS = ".66";
                            break;
                        case "20":
                            bikeS = "1.33";
                            break;
                        case "30":
                            bikeS = "2";
                            break;
                        case "40":
                            bikeS = "2.66";
                            break;
                        case "50":
                            bikeS = "3.33";
                            break;
                        default:
                            bikeS = "default";
                    }
                    image.setImageResource(R.drawable.roadbike);
                }
                bikeSelected.setText("It will take you " + bikeS + " hours");
            }

        }


    }
