package com.example.lab8;

public class BikeShop {
    private String bikeShop;
    private String bikeShopURL;

    private void setBikeInfo(Integer bikeCrowd){
        {
            switch (bikeCrowd){
                case 0: //mountain
                    bikeShop="Full Cycle";
                    bikeShopURL="https://www.fullcyclebikes.com";
                    break;
                case 1: //road
                    bikeShop="Boulder Cycle Sport";
                    bikeShopURL="http://www.bouldercyclesport.com/";
                    break;
                case 2: //BMX
                    bikeShop="The Fix";
                    bikeShopURL="http://thefixbikes.com/";
                    break;
                case 3: //Fixed-Gear
                    bikeShop="University Bikes";
                    bikeShopURL="https://ubikes.com/";
                    break;
                case 4: //Electric
                    bikeShop="Pedego Electric Bikes";
                    bikeShopURL="https://www.pedegoelectricbikes.com/";
                    break;
                default:
                    bikeShop="none";
                    bikeShopURL="https://www.google.com/search?sxsrf=ACYBGNROrvvisT-gGFaHctcEAfJpUxI4MA%3A1575566976665&ei=gD7pXZ2OKMT4-gSci4WYAg&q=boulder+bike+shops&oq=boulder+bike+shops&gs_l=psy-ab.3..0j0i7i30j0i30j0i5i30j0i8i30l6.24247.24613..24824...0.8..0.242.570.2j1j1......0....1..gws-wiz.......0i71.81uFxgCgggE&ved=0ahUKEwidztqvhJ_mAhVEvJ4KHZxFASMQ4dUDCAs&uact=5";
            }
        }
    }

        public void setBikeShop(Integer bikeCrowd){ setBikeInfo(bikeCrowd);
        }
        public void setBikeShopURL(Integer bikeCrowd){ setBikeInfo(bikeCrowd);
        }
        public String getBikeShop(){
            return bikeShop;
        }
        public String getBikeShopURL(){
            return bikeShopURL;
        }
    }
