package second;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

@WebServlet("/serverRedirect")
public class ServerRedirectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter writer = resp.getWriter();
        resp.setContentType("text/html");

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/redirects");

        Random random = new Random();
        if (random.nextInt() % 2 == 0) {
            writer.println("<h1>Forward</h1>");
            requestDispatcher.forward(req, resp);
        } else {
            writer.println("<h1>Include</h1>");
            requestDispatcher.include(req, resp);
        }

    }
}
