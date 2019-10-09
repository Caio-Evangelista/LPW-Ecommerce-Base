import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Usuarios;

/**
 * @author Caio Evangelista
 */
public class Login extends HttpServlet {

   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
      boolean logado = false;
      if(request.getSession() != null &&  request.getSession().getAttribute("logado") != null){
         logado = (boolean) request.getSession().getAttribute("logado");
      }

      if(logado){
         request.getSession().setAttribute("logado", false);
         response.sendRedirect("index.jsp");
      }
      else{
         String email = request.getParameter("email");
         String senha = request.getParameter("senha");

         if(Usuarios.isLogin(email, senha) ){
            request.getSession().setAttribute("logado", true);
            response.sendRedirect("addProduto.jsp");
         }
         else {
            response.sendRedirect("login.jsp");
         }
      }

   }

}
