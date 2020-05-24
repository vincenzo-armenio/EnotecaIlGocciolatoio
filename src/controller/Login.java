package controller;

import model.Utente;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class Login extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final UtenteDAO utenteDAO = new UtenteDAO();

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username= request.getParameter("username");
        String password= request.getParameter("pass");
        String address;
        Utente utente = null;
        if (username != null && password != null) {
            utente = utenteDAO.doRetrieveByUsernamePassword(username, password);
        }

        if (utente == null) {
            address="/ErroreCredenziali.jsp";
            RequestDispatcher dispatcher =
                    request.getRequestDispatcher(address);
            dispatcher.forward(request, response);
        }

        System.out.print("Utente trovato\n");
        request.getSession().setAttribute("utente", utente);

        //Viene rindirizzata alla HomeServlet
        address = "index.html";
        response.sendRedirect(address);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
/*
@WebServlet("/login")
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub

        String email= request.getParameter("email");
        String password= request.getParameter("password");

        UtenteDAO utenteDAO = new UtenteDAO();

            String address;
            System.out.println("Prima della Query\n");

            Utente user = utenteDAO.doRetrieveByUsernamePassword(email, password);

            if(user!=null){
                address="HomeServlet";
                request.getSession().setAttribute("utente", user);
                response.sendRedirect(address);

                /*
                if(user.getRuolo().equals("utente")){
                    address="/ProfiloAmministratore.jsp";
                    RequestDispatcher dispatcher =
                            request.getRequestDispatcher(address);
                    dispatcher.forward(request, response);
                    //address="/Home.jsp";
                    //response.sendRedirect(address);
                }
                else{
                    System.out.println("Controllo se e' amministratore...\n");
                    address="/Home.jsp";
                    RequestDispatcher dispatcher =
                            request.getRequestDispatcher(address);
                    dispatcher.forward(request, response);
                    //response.sendRedirect(address);
                }
            }
            else{
                System.out.println("Sono down e non trovo l'utente\n");
                address="/ErroreCredenziali.jsp";
                RequestDispatcher dispatcher =
                        request.getRequestDispatcher(address);
                dispatcher.forward(request, response);
                //response.sendRedirect(address);
            }
    }
}
                    */
