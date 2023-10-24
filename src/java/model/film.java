/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class film {
    public String name, describee,imglink,videolink,label,filmtype;
    public int timeremain,filmID;
    
    public film(int filmID, String name, String describee, String imglink, String videolink, int timeremain, String label, String filmtype){
        this.filmID = filmID;
        this.name = name;
        this.describee = describee;
        this.imglink = imglink;
        this.videolink = videolink;
        this.timeremain = timeremain;
        this.label = label;
        this.filmtype = filmtype;
    }
    
    public int getFilmID(){
        return filmID;
    }
    public String getName(){
        return name;
    }
    public String getDescribe(){
        return describee;
    }
    public String getImglink(){
        return imglink;
    }
    public String getVideolink(){
        return videolink;
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
}


