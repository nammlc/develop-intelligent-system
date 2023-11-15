/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.*;
import java.util.Random;
import model.user;

/**
 *
 * @author Admin
 */
public class userDAO {

    public static Connection openConnection() {
        String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/namlc?useUnicode=true&characterEncoding=utf-8";

        String user = "root";
        String password = "123456";
        Connection conn = null;
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, user, password);
            if (conn != null) {
                System.out.println("yes");
            } else {
                System.out.println("no");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static boolean addUser(String fullname, String phonenum, String email, String username, String passwd, Date dob) {
        try (Connection c = openConnection()) {
            String query = "insert into user(fullname,phonenum,email,passwd,username,dob) values(?,?,?,?,?,?)";
            PreparedStatement ps = c.prepareStatement(query);
            ps.setString(1, fullname);
            ps.setString(2, phonenum);
            ps.setString(3, email);
            ps.setString(4, passwd);
            ps.setString(5, username);
            ps.setDate(6, dob);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean checkUser(String username, String passwd) {
        try (Connection c = openConnection()) {
            String query = "SELECT * FROM user WHERE username= ? and passwd=?";
            PreparedStatement ps = c.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, passwd);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean isUserName(String username) {
        try (Connection c = openConnection()) {
            String query = "select * from user where username=? ";
            PreparedStatement ps = c.prepareStatement(query);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean isUserEmail(String email) {
        try (Connection c = openConnection()) {
            String query = "select * from user where email=? ";
            PreparedStatement ps = c.prepareStatement(query);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean isUserPhone(String phonenum) {
        try (Connection c = openConnection()) {
            String query = "select * from user where phonenum=? ";
            PreparedStatement ps = c.prepareStatement(query);
            ps.setString(1, phonenum);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public static user getUser(String username){
        try (Connection c = openConnection()) {
            String query = "select * from user where username = ?";
            PreparedStatement ps = c.prepareStatement(query);
            ps.setString(1,username);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                int  id = rs.getInt("user_id");
                String fullname = rs.getString("fullname");
                String phonenum = rs.getString("phonenum");
                String email = rs.getString("email");
                String passwd = rs.getString("passwd");
                String usernamee = rs.getString("username");
                int age = rs.getInt("age");
                Date dob = rs.getDate("dob");
                user User = new user(id,fullname,phonenum,email,passwd,username,age,dob);
                return User;
            }
            
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
    public static boolean editUser(String username,String fullname,Date dob){
        try(Connection c = openConnection()){
            String query = "UPDATE  user set fullname = ?, dob = ?   WHERE username = ?";
            PreparedStatement ps = c.prepareStatement(query);
            ps.setString(1, fullname);
            ps.setDate(2, dob);
            ps.setString(3, username);
            ps.executeUpdate();
            return true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }

    public static String generateRandomCode() {
        // Chiều dài của mã xác nhận
        int codeLength = 6;

        // Ký tự cho mã xác nhận (có thể sử dụng số và chữ cái)
        String characters = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";

        StringBuilder randomCode = new StringBuilder(codeLength);

        // Tạo mã xác nhận ngẫu nhiên bằng cách chọn ký tự từ chuỗi characters
        Random random = new Random();
        for (int i = 0; i < codeLength; i++) {
            int index = random.nextInt(characters.length());
            randomCode.append(characters.charAt(index));
        }

        return randomCode.toString();
    }

    public static void main(String[] args) {
        userDAO a = new userDAO();
        boolean bool = a.editUser("namlcc","Lê Công Nam",java.sql.Date.valueOf("2023-11-10"));
        System.out.print(bool);
        
        
    }
}
