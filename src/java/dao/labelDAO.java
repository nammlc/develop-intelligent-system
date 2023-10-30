/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.*;
import java.util.*;
import javax.servlet.http.Part;
import model.label;

/**
 *
 * @author Admin
 */
public class labelDAO {

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

    public static List<label> getAllLabels() throws FileNotFoundException, IOException {
        List<label> labels = new ArrayList<>();
        String query = "SELECT * FROM labels";

        try (Connection c = openConnection()) {
            PreparedStatement statement = c.prepareStatement(query);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                String id = rs.getString("labelID");
                String name = rs.getString("name");
                String des = rs.getString("des");

                Timestamp daycreate = rs.getTimestamp("daycreate");

                label Label = new label(Integer.parseInt(id), name, des, daycreate);
                labels.add(Label);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("can't connect to mysql");
        }

        return labels;
    }

    public static label getLabel(int labelID) throws IOException {
        Connection c = openConnection();
        if (c == null) {
            // Xử lý khi không thể kết nối đến CSDL
            return null;
        }

        try {
            String query = "SELECT * FROM labels WHERE labelID = ?";
            PreparedStatement ps = c.prepareStatement(query);
            ps.setInt(1, labelID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("labelID");
                String name = rs.getString("name");
                String des = rs.getString("des");

                Timestamp daycreate = rs.getTimestamp("daycreate");
                label Label = new label(id, name, des, daycreate);
                return Label;
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

    public static boolean deleteLabel(int id) {
        try (Connection c = openConnection()) {
            String insert = "DELETE FROM labels WHERE labelID = ?";
            PreparedStatement ps = c.prepareStatement(insert);
            ps.setInt(1, id);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    public static boolean addLabel(String name, String des) {
        try (Connection c = openConnection()) {
            String add = "INSERT INTO labels(name,des) VALUES (?,?) ";
            PreparedStatement ps = c.prepareStatement(add);
            ps.setString(1, name);
            ps.setString(2, des);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean updateLabel(int labelID, String name, String des) {
        try (Connection c = openConnection()) {
            String update = "UPDATE labels SET name = ?, des = ?   WHERE labelID = ? ";
            PreparedStatement ps = c.prepareStatement(update);
            ps.setString(1, name);
            ps.setString(2, des);
            ps.setInt(3, labelID);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static List<label> searchLabels(String name) {
        List<label> labels = new ArrayList<>();
        String query = "SELECT * FROM labels WHERE name LIKE ?";
        try (Connection c = openConnection()) {
            PreparedStatement statement = c.prepareStatement(query);
            statement.setString(1, "%" + name + "%");
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("labelID");
                String namee = rs.getString("name");
                String des = rs.getString("des");
                Timestamp daycreate = rs.getTimestamp("daycreate");
                

                label filmss = new label(id, namee, des, daycreate);
                labels.add(filmss);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("can't connect to mysql");
        }

        return labels;
    }

    public static void main(String[] args) throws IOException {
        labelDAO LabelDAO = new labelDAO();
        List<label> list = labelDAO.searchLabels("cl");
        for (label a : list) {
            System.out.println(a.getLabelID() + " " + a.getDes());
        }
    }
}
