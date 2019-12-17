package com.example.beauwaltersfinal;

public class BurritoShop {
    private String burritoShop;
    private String burritoShopURL;

    private void setBurritoInfo(Integer burritoLocation) {
        switch (burritoLocation){
            case 0:
                burritoShop= "Illegal Petes";
                burritoShopURL="https://www.illegalpetes.com/";
                break;
            case 1:
                burritoShop= "Chipotle";
                burritoShopURL="https://www.chipotle.com/";
                break;
            case 2:
                burritoShop="Bartaco";
                burritoShopURL="https://bartaco.com/";
                break;
            default:
                burritoShop="none";
                burritoShopURL="https://www.google.com/search?sxsrf=ACYBGNT_UcQu6J-bAEryjTlhMBrrHD3rfA%3A1576621222602&ei=plT5Xd6eJIa3tAagnaMQ&q=burrito+shops+boulder&oq=burrito+shops+boulder&gs_l=psy-ab.3..35i39.5739.6974..7431...0.2..0.59.116.2......0....1..gws-wiz.......0i71j35i304i39.GHeqZSSXxbI&ved=0ahUKEwjeiazf273mAhWGG80KHaDOCAIQ4dUDCAs&uact=5";
        }

    }

    public void setburritoShop(Integer burritoLocation){
        setBurritoInfo(burritoLocation);
    }

    public void setburritoShopURL(Integer burritoLocation){
        setBurritoInfo(burritoLocation);
    }
    public String getBurritoShop(){
        return burritoShop;
    }
    public String getBurritoShopURL(){
        return burritoShopURL;
    }
}
