package controller;

import model.Categoria;
import model.Prodotto;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/show-category")
public class MostraCategoria extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        /*
        Viene ripreso il parametro della category, e controllato a quale categoria corrisponde
         */
        String category = request.getParameter("category");
        ProdottoDAO proDAO = new ProdottoDAO();
        String address = null;
        String categoria=null;
        if (category.equals("vini")) {
            categoria = "Vino";
        }
        if (category.equals("spumanti")) {
            categoria = "Spumanti";
        }
        if (category.equals("champagne")) {
            categoria = "Champagne";
        }
        if (category.equals("birre")) {
            categoria = "Birra";
        }
        if (category.equals("superalcolici")) {
            categoria = "Superalcolici";
        }
        if (category.equals("amari")) {
            categoria = "Amari";
        }
        if (category.equals("cibo")) {
            categoria = "Cibo";
        }
        List<Prodotto> prodotti = proDAO.retriveCategory(categoria);
        request.setAttribute("prodotti", prodotti);
        address = "/Categoria.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(address);
        dispatcher.forward(request, response);
    }
}
