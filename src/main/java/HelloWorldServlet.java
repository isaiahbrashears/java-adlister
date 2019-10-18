import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;




@WebServlet("/hello")
public class HelloWorldServlet extends HttpServlet {

    private int hitCount;
    public void init() {
        // Reset hit counter.
        hitCount = 0;
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        String name = req.getParameter("name");
        String count = req.getParameter("count");
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        if (name == null) {
            out.println("<h1>Hello, World!</h1>");
        }else {
            out.println("<h1>Hello, " + name + "!");
        }
        if(count.equalsIgnoreCase( "reset")){
            init();
            out.println("<p>total page visits: " + hitCount + " </p>");
        }else {
            hitCount++;

            out.println("<p>total page visits: " + hitCount + " </p>");
        }

    }


}
