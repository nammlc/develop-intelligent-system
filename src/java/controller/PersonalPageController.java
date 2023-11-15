// Controller để hiển thị trang cá nhân
package controller;

import dao.userDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.user;

/**
 * Servlet này xử lý cả yêu cầu HTTP GET và POST từ trang cá nhân.
 */
public class PersonalPageController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        String username = session.getAttribute("username").toString();

        // Lấy thông tin người dùng từ DAO
        user User = userDAO.getUser(username);

        // Đặt thông tin người dùng như một thuộc tính trong yêu cầu
        request.setAttribute("user", User);

        // Chuyển hướng yêu cầu đến trang JSP
        request.getRequestDispatcher("personal-page.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Xử lý các yêu cầu POST nếu cần
    }

    @Override
    public String getServletInfo() {
        return "Mô tả ngắn";
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // Xử lý các yêu cầu nếu cần
    }
}
