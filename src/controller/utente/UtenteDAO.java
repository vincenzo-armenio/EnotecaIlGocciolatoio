package controller;

import model.ConPool;
import model.Prodotto;
import model.Utente;

import java.sql.*;
import java.util.ArrayList;

public class UtenteDAO {
    public ArrayList<Utente> retriveAll() {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT email, username, ruolo FROM utente");
            ArrayList<Utente> list = new ArrayList<>();
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Utente u = new Utente();
                u.setEmail(rs.getString(1));
                u.setUsername(rs.getString(2));
                u.setRuolo(rs.getString(3));
                list.add(u);
            }
            return list;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public ArrayList<String> retriveUser(){
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT username FROM utente ");

            ResultSet rs = ps.executeQuery();

            ArrayList<String> list = new ArrayList<>();

            while (rs.next()) {
                String e = rs.getString(1);
                list.add(e);
            }
            return list;
        }catch(SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Utente doRetrieveByUsernamePassword(String username, String password) {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement(
                    "SELECT id, username, pass, email, ruolo FROM utente WHERE username=? AND pass=SHA1(?)");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Utente p = new Utente();
                p.setId(rs.getInt(1));
                p.setUsername(rs.getString(2));
                p.setPass(rs.getString(3));
                p.setEmail(rs.getString(4));
                p.setRuolo(rs.getString(5));
                return p;
            }
            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void doSave(Utente user) {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO utente (email, username, pass, ruolo) VALUES(?,?,?,?)",
                    Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, user.getEmail());
            ps.setString(2, user.getUsername());
            ps.setString(3, user.getPass());
            ps.setString(4,user.getRuolo());
            if (ps.executeUpdate() != 1) {
                throw new RuntimeException("INSERT error.");
            }
            ResultSet rs = ps.getGeneratedKeys();
            rs.next();
            int id=rs.getInt(1);
            user.setId(id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}

