package controller;

import model.Utente;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/indirizzamento")
public class IndirizzamentoLoginOProfilo extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String address;
        Utente user= (Utente) request.getSession().getAttribute("utente");

        if(user!=null){

            if(user.getRuolo().equals("utente")){
                address="/InformazioniPersonali.jsp";
                RequestDispatcher dispatcher =request.getRequestDispatcher(address);
                dispatcher.forward(request, response);
            }
            if(user.getRuolo().equals("amministratore")){
                address="/ProfiloAmministratore.jsp";
                RequestDispatcher dispatcher =request.getRequestDispatcher(address);
                dispatcher.forward(request, response);
            }

        } else {
            address = "/LoginRegistrazione.jsp";
            RequestDispatcher dispatcher =
                    request.getRequestDispatcher(address);
            dispatcher.forward(request, response);
        }

    }
}
