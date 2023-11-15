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

    public int user_id;
    public String username, passwd, fullname, phonenum, email;
    public Date dob;
    public int age;

    public user(int user_id, String fullname, String phonenum, String email, String passwd, String username, int age, Date dob) {
        this.user_id = user_id;
        this.fullname = fullname;
        this.phonenum = phonenum;
        this.email = email;
        this.passwd = passwd;
        this.username = username;
        this.age = age;
        this.dob = dob;
    }

    public int getUserid() {
        return user_id;
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

    public int getAge() {
        return age;
    }

    public Date getDob() {
        return dob;
    }
}
