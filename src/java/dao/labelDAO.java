/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.*;
import java.util.*;
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

    public static List<label> getAllLabels() {
        List<label> labels = new ArrayList<>();
        String query = "SELECT * FROM labels";

        try (Connection c = openConnection()) {
            PreparedStatement statement = c.prepareStatement(query);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                String id = rs.getString("labelID");
                String name = rs.getString("name");
                String describee = rs.getString("describee");
                String imgdes = rs.getString("imgdes");
                int sumofsample = rs.getInt("sumofsample");
                String daycreate = rs.getString("daycreate");

                label Label = new label(id, name, describee, sumofsample, imgdes, daycreate);
                labels.add(Label);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("can't connect to mysql");
        }

        return labels;
    }

    public static label getLabel(String labelID) {
        Connection c = openConnection();
        if (c == null) {
            // Xử lý khi không thể kết nối đến CSDL
            return null;
        }

        try {
            String query = "SELECT * FROM labels WHERE labelID = ?";
            PreparedStatement ps = c.prepareStatement(query);
            ps.setString(1, labelID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                label Label = new label(
                        rs.getString("labelID"),
                        rs.getString("name"),
                        rs.getString("describee"),
                        rs.getInt("sumofsample"),
                        rs.getString("imgdes"),
                        rs.getString("daycreate")
                );
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

    public static boolean deleteLabel(String id) {
        try (Connection c = openConnection()) {
            String insert = "DELETE FROM labels WHERE labelID = ?";
            PreparedStatement ps = c.prepareStatement(insert);
            ps.setString(1, id);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    public static boolean updateLabel(label a) {
        try (Connection c = openConnection()) {
            String update = "UPDATE labels SET name=?, describee=?, imgdes=? WHERE labelID=?";
            PreparedStatement ps = c.prepareStatement(update);
            ps.setString(1, a.getName());
            ps.setString(2, a.getDescribe());
            ps.setString(3, a.getImgdes());
            ps.setString(4, a.getLabelID()); // Thêm labelID để xác định bản ghi cần cập nhật.

            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static void main(String[] args) {
        labelDAO LabelDAO = new labelDAO();
        List<label> list = labelDAO.getAllLabels();
        for (label a : list) {
            System.out.println(a.getLabelID() + " " + a.getImgdes() + " " + a.getDaycreate());
        }
    }
}
