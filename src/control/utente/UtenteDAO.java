package control.utente;

import model.ConPool;
import model.Utente;

import java.io.Serializable;
import java.sql.*;

public class UtenteDAO implements Serializable {


    public static Utente RetriveByEmailPass(String email, String password) throws SQLException,
            ClassNotFoundException {
     try (Connection con = ConPool.getConnection()) {
        PreparedStatement ps =
                con.prepareStatement("SELECT email,password FROM Utente WHERE email=?");
        ps.setString(1, email);
        ps.setString( 2,password);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            Utente u=new Utente();
            u.setEmail(rs.getString(2));
            u.setPassword(rs.getString(3));

            return u;
        }
        return null;
    } catch (SQLException e) {
        throw new RuntimeException(e);
    }
    }
}