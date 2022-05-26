import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LogIn" , urlPatterns = "/LogIn")
public class LogIn extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String user = request.getParameter("username");
      String pass = request.getParameter("password");
        PrintWriter printWriter = response.getWriter();
      request.getAttribute("username" + user);
      request.getAttribute("password" + pass);
      if("admin".equals(user) && "admin".equals(pass)){
             printWriter.println("<h1>" + user + "</h1>");
      }else {
          printWriter.println("Login Error");
      }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
