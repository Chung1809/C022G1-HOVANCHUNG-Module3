import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Money" , urlPatterns = "/Money")
public class Money extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float vnd = Float.parseFloat(request.getParameter("number1"));
        float usd = Float.parseFloat(request.getParameter("number2"));
        float convert = vnd/23000;
        PrintWriter printWriter = response.getWriter();
        printWriter.println("VND :" + vnd );
        printWriter.println("USD :" + convert  );

    }
}
