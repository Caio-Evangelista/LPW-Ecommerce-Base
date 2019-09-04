import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Caio Evangelista
 */
public class Login extends HttpServlet {

   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {

      String email = request.getParameter("email");
      String senha = request.getParameter("senha");

      if(email.equals("adm@ifpr.edu.br") && senha.equals("admin") ){
         request.getSession().setAttribute("logado", true);
         response.sendRedirect("produtos.jsp");
      }
      else {
         response.sendRedirect("login.jsp");
      }

   }

}
