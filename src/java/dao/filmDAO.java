/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.*;
import java.util.*;
import model.film;


/**
 *
 * @author Admin
 */
public class filmDAO {
    public static Connection openConnection(){
        String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/namlc";
        String user = "root";
        String password = "123456";
        Connection conn = null;
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, user, password);
        if(conn != null){
            System.out.println("yes");
        }
        else{
            System.out.println("no");
        }}
         catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
    public static List<film> getAllFilms() {
    List<film> films = new ArrayList<>();
    String query = "SELECT * FROM film";

    try (Connection c = openConnection()) {
        PreparedStatement statement = c.prepareStatement(query);
        ResultSet rs = statement.executeQuery();

        while (rs.next()) {
            int id = rs.getInt("filmID");
            String name = rs.getString("name");
            String describee = rs.getString("describee");
            String imglink = rs.getString("imglink");
            String videolink = rs.getString("videolink");
            int timeremain = rs.getInt("timeremain");
            String label = rs.getString("label");
            String filmtype = rs.getString("filmtype");
            
            film filmss = new film(id, name, describee, imglink, videolink, timeremain, label, filmtype);
            films.add(filmss);
        }
    } catch (SQLException e) {
        e.printStackTrace();
        System.out.println("can't connect to mysql");
    }

        return films;
    }
    public static List<film> searchFilms(String name){
        List<film> films = new ArrayList<>();
        String query = "SELECT * FROM film WHERE name = ?";
        try (Connection c = openConnection()) {
        PreparedStatement statement = c.prepareStatement(query);
        statement.setString(1, name);
        ResultSet rs = statement.executeQuery();
        
        while (rs.next()) {
            int id = rs.getInt("filmID");
            String namee = rs.getString("name");
            String describee = rs.getString("describee");
            String imglink = rs.getString("imglink");
            String videolink = rs.getString("videolink");
            int timeremain = rs.getInt("timeremain");
            String label = rs.getString("label");
            String filmtype = rs.getString("filmtype");
            
            film filmss = new film(id, namee, describee, imglink, videolink, timeremain, label, filmtype);
            films.add(filmss);
        }
    } catch (SQLException e) {
        e.printStackTrace();
        System.out.println("can't connect to mysql");
    }

        return films;
    }
public static void main(String[] args){
    filmDAO FilmDAO = new filmDAO();
    List<film> list = FilmDAO.getAllFilms();
    for(film a : list){
        System.out.println(a.getFilmID() + " "+ a.getImglink());
    }
}
}
    
