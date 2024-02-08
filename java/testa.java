import java.io.PrintWriter;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.sql.*;
@WebServlet("/testa")
public class testa extends HttpServlet{
    public testa(){
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>\n" +
                "<html lang=\"en\">\n" +
                "<head>\n" +
                "  <title>Home</title>\n" +
                "  <style>\n" +
                "    body{\n" +
                "      margin: 0;\n" +
                "      padding: 0;\n" +
                "      height: 100vh;\n" +
                "\n" +
                "    }\n" +
                "  </style>\n" +
                "</head>\n" +
                "<body>");
        try {
            String username= request.getParameter("username");
            String password=request.getParameter("password");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "root");
            Statement st=conn.createStatement();
            ResultSet r=st.executeQuery(String.format( "select * from credentials where username='%s' and password='%s' ",username,password));
            if (r.next()){
                out.println("<h2>Login Successful</h2>");
            }
            else {
                out.println("<h2>Login Failed! Invalid Username or Password</h2>");
            }
            out.println("</body></html>");
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}