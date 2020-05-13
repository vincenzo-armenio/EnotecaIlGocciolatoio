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
        String category=request.getParameter("category");
        ProdottoDAO proDAO = new ProdottoDAO();
        String address = null;

        if(category.equals("vini")){
            String categoria = "vini";

            List<Prodotto> prodotti = proDAO.retriveCategory(categoria);
            request.getSession().setAttribute("prodotti", prodotti);

            address = "/Categoria.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(address);
            dispatcher.forward(request, response);
        }
        else{
            if(category.equals("spumanti")){
                String categoria = "spumanti";

                List<Prodotto> prodotti = proDAO.retriveCategory(categoria);
                request.getSession().setAttribute("prodotti", prodotti);

                address = "/Categoria.jsp";

            }
            else{
                if(category.equals("champagne")){
                    String categoria = "champagne";

                    List<Prodotto> prodotti = proDAO.retriveCategory(categoria);
                    request.getSession().setAttribute("prodotti", prodotti);

                    address = "/Categoria.jsp";
                }
                else{
                    if(category.equals("birre")){
                        String categoria = "birre";

                        List<Prodotto> prodotti = proDAO.retriveCategory(categoria);
                        request.getSession().setAttribute("prodotti", prodotti);

                        address = "/Categoria.jsp";
                    }
                    else{
                        if(category.equals("superalcolici")){
                            String categoria = "superalcolici";

                            List<Prodotto> prodotti = proDAO.retriveCategory(categoria);
                            request.getSession().setAttribute("prodotti", prodotti);

                            address = "/Categoria.jsp";
                        }
                        else{
                            if(category.equals("amari")){
                                String categoria = "amari";

                                List<Prodotto> prodotti = proDAO.retriveCategory(categoria);
                                request.getSession().setAttribute("prodotti", prodotti);

                                address = "/Categoria.jsp";
                            }
                            else{
                                if(category.equals("cibo")){
                                    String categoria = "cibo";

                                    List<Prodotto> prodotti = proDAO.retriveCategory(categoria);
                                    request.getSession().setAttribute("prodotti", prodotti);

                                    address = "/Categoria.jsp";
                                }

                            }

                        }

                    }

                }
            }

        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(address);
        dispatcher.forward(request, response);
    }

}
