package com.example.finaltest;

public class CoffeeShop {
    private String coffeeShop;
    private String coffeeShopURL;

    private void setCoffeeInfo(Integer coffeeCrowd) {
        switch (coffeeCrowd) {
            case 0:
                coffeeShop= "Starbucks";
                coffeeShopURL= "https://starbucks.com";
                break;
            case 1:
                coffeeShop="Amante";
                coffeeShopURL="http://www.amantecoffee.com/";
                break;
            default:
                coffeeShop="none";
                coffeeShopURL="https://www.google.com/search?q=boulder+coffee+shops&i e=utf-8&oe=utf-8";
        }
    }

    public void setCoffeeShop(Integer coffeeCrowd){
        setCoffeeInfo(coffeeCrowd);
    }
    public void setCoffeeShopURL(Integer coffeeCrowd){
        setCoffeeInfo(coffeeCrowd);
    }
    public String getCoffeeShop(){
        return coffeeShop;
    }
    public String getCoffeeShopURL(){
        return coffeeShopURL;
    }
}
