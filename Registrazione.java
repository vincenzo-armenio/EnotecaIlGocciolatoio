package control.utente;

public class Registrazione extends HttpServlet {
    private UtenteDAO utenteDao;

    public void init() {
        utenteDao = new UtenteDAO();
    }

    protected void doPost(HttpServlerRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        int id=request.getParameter("id");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String ruolo=request.getParameter("ruolo");

        Utente utente=new Utente();
        utente.setEmail(email);
        utente.setUsername(username);
        utente.setPassword(password);
        utente.setRuolo(ruolo);

        try{
            UtenteDAO.RetriveByEmailPass(utente);
        } catch(Exception e)
        {
            e.printStackTrace();
        }
        response.sendRedirect("LoginRegistrazione.jsp");
    }
}
