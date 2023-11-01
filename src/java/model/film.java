/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Timestamp;

/**
 *
 * @author Admin
 */
public class film {
    public String name, des,imglink,videolink,label,filmtype,tag;
    public int timeremain,id;
    Timestamp timecre;

    public film(int id, String name, String des, String imglink, String videolink, String tag, int timeremain, String filmtype, String label, Timestamp timecre){
        this.id = id;
        this.name = name;
        this.des = des;
        this.imglink = imglink;
        this.videolink = videolink;
        this.tag = tag; 
        this.timeremain = timeremain;
        this.filmtype = filmtype;
        this.label = label;
        this.timecre = timecre;
    }
    
    public int getId(){
        return id;
    }
    public String getName(){
        return name;
    }
    public String getDes(){
        return des;
    }
    public String getImglink(){
        return imglink;
    }
    public String getVideolink(){
        return videolink;
    }
    public String getTag(){
        return tag;
    }
    public int getTimeremain(){
        return timeremain;
    }
    public String getLabel(){
        return label;
    }
    public String getFilmtype(){
     return filmtype;
    }
    public Timestamp getTimecre(){
        return timecre;
    }
}


