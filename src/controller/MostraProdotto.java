package controller;

import model.Prodotto;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/show-product")
public class MostraProdotto extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String product=request.getParameter("product");
        ProdottoDAO proDAO = new ProdottoDAO();
        String address = null;

        Prodotto p=proDAO.retriveByName(product);
        request.setAttribute("prodotto", p);

        address = "/Prodotto.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(address);
        dispatcher.forward(request, response);

    }
}
