/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.io.*;
import java.sql.Timestamp;

/**
 *
 * @author Admin
 */
public class label {
    public String name, des ;
    int labelID;
    Timestamp daycreate;
    
    public label(int labelID, String name, String des,  Timestamp  daycreate){
        this.labelID = labelID;
        this.name = name;
        this.des = des;
        this.daycreate = daycreate;
    }
    
    public int getLabelID(){
        return labelID;
    }
    public String getName(){
        return name;
    }
    public String getDes(){
        return des;
    }
    public Timestamp getDaycreate(){
        return daycreate;
    }
    
}