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
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@WebServlet("/index.html")
public class HomeServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ProdottoDAO proDAO=new ProdottoDAO();
        /*

            Prodotto p=new Prodotto();
        double n = (int)(Math.random()*10);
        p=proDAO.retriveOne((int) n);
        getServletContext().setAttribute("prodotto", p);
        }*/

        Prodotto p1,p2,p3,p4,p5,p6,p7,p8;

        p1 = proDAO.retriveOne((int) (Math.random() * 10));
        getServletContext().setAttribute("p1" , p1);

        p2 = proDAO.retriveOne((int) (Math.random() * 10));
        getServletContext().setAttribute("p2" , p2);

        p3 = proDAO.retriveOne((int) (Math.random() * 10));
        getServletContext().setAttribute("p3" , p3);

        p4 = proDAO.retriveOne((int) (Math.random() * 10));
        getServletContext().setAttribute("p4" , p4);

        p5 = proDAO.retriveOne((int) (Math.random() * 10));
        getServletContext().setAttribute("p5" , p5);

        p6 = proDAO.retriveOne((int) (Math.random() * 10));
        getServletContext().setAttribute("p6" , p6);

        p7 = proDAO.retriveOne((int) (Math.random() * 10));
        getServletContext().setAttribute("p7" , p7);

        p8 = proDAO.retriveOne((int) (Math.random() * 10));
        getServletContext().setAttribute("p8" , p8);

        String address;
        address = "/Home.jsp";
        RequestDispatcher dispatcher =
                request.getRequestDispatcher(address);
        dispatcher.forward(request, response);

    }
}

