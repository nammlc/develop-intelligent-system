/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.io.IOException;
import java.sql.*;
import java.util.*;
import model.film;

/**
 *
 * @author Admin
 */
public class filmDAO {

    public static Connection openConnection() {
        String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/namlc";
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

    public static List<film> getAllFilms() {
        List<film> films = new ArrayList<>();
        String query = "SELECT * FROM films";

        try (Connection c = openConnection()) {
            PreparedStatement statement = c.prepareStatement(query);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String des = rs.getString("des");
                String imglink = rs.getString("imglink");
                String videolink = rs.getString("videolink");
                int timeremain = rs.getInt("timeremain");
                String label = rs.getString("label");
                String tag = rs.getString("tag");
                String filmtype = rs.getString("filmtype");
                Timestamp timecre = rs.getTimestamp("timecre");
                film filmss = new film(id, name, des, imglink, videolink, tag, timeremain, filmtype, label, timecre);
                films.add(filmss);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("can't connect to mysql");
        }

        return films;
    }

    public static List<film> searchFilms(String name) {
        List<film> films = new ArrayList<>();
        String query = "SELECT * FROM films WHERE name LIKE ?";
        try (Connection c = openConnection()) {
            PreparedStatement statement = c.prepareStatement(query);
            statement.setString(1, "%" + name + "%");
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String namee = rs.getString("name");
                String des = rs.getString("des");
                String imglink = rs.getString("imglink");
                String videolink = rs.getString("videolink");
                int timeremain = rs.getInt("timeremain");
                String label = rs.getString("label");
                String tag = rs.getString("tag");
                String filmtype = rs.getString("filmtype");
                Timestamp timecre = rs.getTimestamp("timecre");
                film filmss = new film(id, namee, des, imglink, videolink, tag, timeremain, filmtype, label, timecre);
                films.add(filmss);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("can't connect to mysql");
        }

        return films;
    }

    public static List<film> filterFilms(String tag) {
        List<film> films = new ArrayList<>();
        String query = "SELECT * FROM films WHERE tag LIKE ?";
        try (Connection c = openConnection()) {
            PreparedStatement statement = c.prepareStatement(query);
            statement.setString(1, "%" + tag + "%");
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String des = rs.getString("des");
                String imglink = rs.getString("imglink");
                String videolink = rs.getString("videolink");
                int timeremain = rs.getInt("timeremain");
                String label = rs.getString("label");
                String tagg = rs.getString("tag");
                String filmtype = rs.getString("filmtype");
                Timestamp timecre = rs.getTimestamp("timecre");
                film filmss = new film(id, name, des, imglink, videolink, tagg, timeremain, filmtype, label, timecre);
                films.add(filmss);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("can't connect to mysql");
        }

        return films;
    }

    public static film getFilm(int id) throws IOException {
        Connection c = openConnection();
        if (c == null) {
            // Xử lý khi không thể kết nối đến CSDL
            return null;
        }

        try {
            String query = "SELECT * FROM films WHERE id = ?";
            PreparedStatement ps = c.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int idd = rs.getInt("id");
                String name = rs.getString("name");
                String des = rs.getString("des");
                String imglink = rs.getString("imglink");
                String videolink = rs.getString("videolink");
                int timeremain = rs.getInt("timeremain");
                String label = rs.getString("label");
                String tagg = rs.getString("tag");
                String filmtype = rs.getString("filmtype");
                Timestamp timecre = rs.getTimestamp("timecre");
                film filmss = new film(idd, name, des, imglink, videolink, tagg, timeremain, filmtype, label, timecre);
                return filmss;
            } else {
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Xử lý ngoại lệ SQL
        } finally {
            try {
                c.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return null;
    }

    public static void main(String[] args) {
        filmDAO FilmDAO = new filmDAO();
        List<film> list = FilmDAO.filterFilms("phim mỹ");
        for (film a : list) {
            System.out.println(a.getId() + " " + a.getName());
        }
    }
}
