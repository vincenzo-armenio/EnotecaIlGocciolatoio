package controller;

import model.Categoria;
import model.Prodotto;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/index.html")
public class HomeServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ProdottoDAO proDAO=new ProdottoDAO();
        List<Prodotto> prodotti=proDAO.retriveAll();
        getServletContext().setAttribute("prodotti", prodotti);

        String address;
        address = "/Home.jsp";
        RequestDispatcher dispatcher =
                request.getRequestDispatcher(address);
        dispatcher.forward(request, response);

    }
}
