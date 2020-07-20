package controller;

import model.Categoria;
import model.Prodotto;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.util.List;

@WebServlet(name="MyInit",urlPatterns = "/MyInit", loadOnStartup = 0)
public class InitServlet extends HttpServlet {
    @Override
    public void init() throws ServletException{
        CategoriaDAO catDAO=new CategoriaDAO();
        List<Categoria> categorie=catDAO.retriveAll();
        getServletContext().setAttribute("categorie", categorie);
        super.init();
    }
}