import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    private HttpSession user;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        user = request.getSession();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        boolean validAttempt = username.equals("admin") && password.equals("password");


        if (validAttempt) {
            response.sendRedirect("/profile");

            user.setAttribute("user", username);
        } else {
            response.sendRedirect("/login");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        user = request.getSession();
        if (user.getAttribute("user") == null){
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }else {
            response.sendRedirect("/profile");
        }

    }
}
