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
import java.util.Collections;
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
        ArrayList<Integer> list = new ArrayList<Integer>();
        for (int i=1; i<=10; i++) {
            list.add(new Integer(i));
        }

        Collections.shuffle(list);
        for (int i=0; i<8; i++) {
            System.out.println(list.get(i));
            p1 = proDAO.retriveOne((list.get(i)));
            getServletContext().setAttribute("p1" , p1);
            i++;

            p2 = proDAO.retriveOne((list.get(i)));
            getServletContext().setAttribute("p2" , p2);
            i++;

            p3 = proDAO.retriveOne((list.get(i)));
            getServletContext().setAttribute("p3" , p3);
            i++;

            p4 = proDAO.retriveOne((list.get(i)));
            getServletContext().setAttribute("p4" , p4);
            i++;


            p5 = proDAO.retriveOne((list.get(i)));
            getServletContext().setAttribute("p5" , p5);
            i++;

            p6 = proDAO.retriveOne((list.get(i)));
            getServletContext().setAttribute("p6" , p6);
            i++;

            p7 = proDAO.retriveOne((list.get(i)));
            getServletContext().setAttribute("p7" , p7);
            i++;

            p8 = proDAO.retriveOne((list.get(i)));
            getServletContext().setAttribute("p8" , p8);
        }

        String address;
        address = "/Home.jsp";
        RequestDispatcher dispatcher =
                request.getRequestDispatcher(address);
        dispatcher.forward(request, response);

    }
}

