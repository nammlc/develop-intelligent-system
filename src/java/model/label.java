/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class label {
    public String name, describee,imgdes,daycreate ,labelID;
    public int sumofsample;
    
    public label(String labelID, String name, String describee, int sumofsample, String imgdes, String daycreate){
        this.labelID = labelID;
        this.name = name;
        this.describee = describee;
        this.sumofsample = sumofsample;
        this.imgdes = imgdes;
        this.daycreate = daycreate;
    }
    
    public String getLabelID(){
        return labelID;
    }
    public String getName(){
        return name;
    }
    public String getDescribe(){
        return describee;
    }
    public String getImgdes(){
        return imgdes;
    }
    public int getSumofsample(){
        return sumofsample;
    }
    public String getDaycreate(){
        return daycreate;
    }
    
}