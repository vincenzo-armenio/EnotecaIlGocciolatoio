package controller;

import model.Utente;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/register")
public class Registrazione extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        String email=request.getParameter("email");
        String pass=request.getParameter("pass");

        UtenteDAO utenteDAO=new UtenteDAO();
        ArrayList<String> users=utenteDAO.retriveUser();
        String address;

        for(String e:users){
            if(e.equals(username)){
                address = "/UsernamegiaPresente.jsp";
                RequestDispatcher dispatcher = request.getRequestDispatcher(address);
                dispatcher.forward(request, response);
                System.out.println("Errore, username gia presente\n");
            }
        }

        Utente u=new Utente();
        u.setEmail(email);
        u.setUsername(username);
        u.setPass(pass);
        u.setRuolo("utente");

        utenteDAO.doSave(u);
        request.getSession().setAttribute("utente", u);

        address = "/Home.jsp";
        RequestDispatcher dispatcher =
                request.getRequestDispatcher(address);
        dispatcher.forward(request, response);

    }
}
