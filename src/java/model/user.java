/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author Admin
 */
public class user {

    public String username, passwd, fullname, phonenum, email;
    public Date dob;

    public user(String name, String passwd, String fullname, String phonenum, String email, Date dob) {
        this.username = name;
        this.passwd = passwd;
        this.fullname = fullname;
        this.email = email;
        this.phonenum = phonenum;
        this.dob = dob;
    }

    public String getUsername() {
        return username;
    }

    public String getPasswd() {
        return passwd;
    }

    public String getFullname() {
        return fullname;
    }

    public String getEmail() {
        return email;
    }

    public String getPhonenum() {
        return phonenum;
    }

    public Date getDob() {
        return dob;
    }
}
