package com.example.beauwaltersfinal;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    private Spinner locationSpinner;

    private Button shopButton;
    private BurritoShop myBurritoShop = new BurritoShop();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //get spinner
        locationSpinner = findViewById(R.id.spinner);

        //get button
        shopButton = findViewById(R.id.button2);

        //create listener
        View.OnClickListener onclick = new View.OnClickListener(){
            public void onClick(View view){
                findBurrito(view);
            }
        };
        shopButton.setOnClickListener(onclick);

    }

    private void findBurrito(View view){
//get spinner item array postion
        Integer location = locationSpinner.getSelectedItemPosition();

        myBurritoShop.setburritoShop(location);

        String suggestedBurritoShop = myBurritoShop.getBurritoShop();
        String suggestedBurritoShopURL = myBurritoShop.getBurritoShopURL();

        Log.i("shop suggested", suggestedBurritoShop);
        Log.i("url suggested", suggestedBurritoShopURL);

        Intent intent = new Intent(this, BurritoActivity.class);

        intent.putExtra("burritoShopName", suggestedBurritoShop);
        intent.putExtra("burritoShopURL", suggestedBurritoShopURL);
        startActivity(intent);
    }

    public void showText(View view) {

        //imageView
        ImageView foodImage = findViewById(R.id.imageView);

        //checkboxes

        CheckBox cheeseBox = findViewById(R.id.checkBox);
        CheckBox guacamoleBox = findViewById(R.id.checkBox2);
        CheckBox lettuceBox = findViewById(R.id.checkBox3);
        CheckBox salsaBox = findViewById(R.id.checkBox4);

        //editText
        EditText name = findViewById(R.id.editText);
        String nameValue = name.getText().toString();

        if (nameValue.matches("")) {
            Toast.makeText(this, "You did not enter a name for your order", Toast.LENGTH_SHORT).show();
            return;
        }

        //textView
        TextView nameText = findViewById(R.id.textView);
        nameText.setText(nameValue);

        RadioButton burritoRadio = findViewById(R.id.radioButton);
        RadioButton tacoRadio = findViewById(R.id.radioButton2);

        if(burritoRadio.isChecked()){
            nameText.append(" wants a burrito");
            foodImage.setImageResource(R.drawable.burrito);

        }else if (tacoRadio.isChecked()){
            nameText.append(" wants a taco");
            foodImage.setImageResource(R.drawable.taco);
        }

        if(cheeseBox.isChecked()){
            nameText.append(" with cheese");
        }
        if(guacamoleBox.isChecked()){
            nameText.append(" with guacamole");
        }
        if(lettuceBox.isChecked()){
            nameText.append(" with lettuce");
        }
        if(salsaBox.isChecked()){
            nameText.append(" with salsa");
        }

    }



}
