
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.*;
import java.util.*;
import javax.servlet.http.Part;
import model.user;
import java.sql.Date;

/**
 *
 * @author Admin
 */
public class userDAO {

    public static Connection openConnection() {
        String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/namlc";
        String user = "root";
        String password = "lenam0604";
        Connection conn = null;

        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return conn;
    }

    public static boolean addUser(String fullname, String phonenum, String email, String username, String passwd, Date dob) {
        try (java.sql.Connection c = openConnection()) {
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

    public static void main(String[] args) {
        userDAO a = new userDAO();
        boolean bool = a.addUser("Lê Công Nam", "0961256092", "lcongnam30@gmial.com", "namlc", "lenam0604", java.sql.Date.valueOf("2002-04-06"));
        System.out.print(bool);
    }
}
