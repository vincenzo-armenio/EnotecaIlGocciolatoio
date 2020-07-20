package controller;

import model.ConPool;
import model.Prodotto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class ProdottoDAO {
    public Prodotto retriveOne(int n){
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT id, nome, descrizione,prezzo, immagine, anno, regione, gradazione, formato, quantita_magazzino, nome_categoria FROM prodotto WHERE id=?");
            ps.setInt(1,n);
            ResultSet rs = ps.executeQuery();
            Prodotto p = new Prodotto();
            while (rs.next()) {
                p.setId(rs.getInt(1));
                p.setNome(rs.getString(2));
                p.setDescrizione(rs.getString(3));
                p.setPrezzo(rs.getDouble(4));
                p.setImmagine(rs.getString(5));
                p.setAnno(rs.getInt(6));
                p.setRegione(rs.getString(7));
                p.setGradazione(rs.getDouble(8));
                p.setFormato(rs.getInt(9));
                p.setQuantita_magazzino(rs.getInt(10));

            }
            return p;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Prodotto> retriveBySearch(String s){
        try (Connection con = ConPool.getConnection()) {
            String search = "%";
            search += s + "%";
            PreparedStatement ps =
                    con.prepareStatement("SELECT id, nome, descrizione,prezzo, immagine, anno, regione, gradazione, formato, quantita_magazzino, nome_categoria FROM prodotto WHERE nome LIKE ?");
            ps.setString(1,search);
            ResultSet rs = ps.executeQuery();

            ArrayList<Prodotto> list=new ArrayList<>();

            while (rs.next()) {
                Prodotto p = new Prodotto();
                p.setId(rs.getInt(1));
                p.setNome(rs.getString(2));
                p.setDescrizione(rs.getString(3));
                p.setPrezzo(rs.getDouble(4));
                p.setImmagine(rs.getString(5));
                p.setAnno(rs.getInt(6));
                p.setRegione(rs.getString(7));
                p.setGradazione(rs.getDouble(8));
                p.setFormato(rs.getInt(9));
                p.setQuantita_magazzino(rs.getInt(10));
                list.add(p);
            }
            return list;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public ArrayList<String> retriveAllProductNames(){
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT nome, FROM prodotto");
            ArrayList<String> list = new ArrayList<>();
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String p=rs.getString(1);
                list.add(p);
            }

            return list;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }



    public Prodotto retriveByName(String nome){
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT nome, descrizione,prezzo, immagine, anno, regione, gradazione, formato, quantita_magazzino, nome_categoria, id FROM prodotto WHERE nome=?");
            ps.setString(1,nome);

            ResultSet rs = ps.executeQuery();
            Prodotto p=new Prodotto();

            while (rs.next()) {

                p.setId(rs.getInt(10));
                p.setNome(rs.getString(1));
                p.setDescrizione(rs.getString(2));
                p.setPrezzo(rs.getDouble(3));
                p.setImmagine(rs.getString(4));
                p.setAnno(rs.getInt(5));
                p.setRegione(rs.getString(6));
                p.setGradazione(rs.getDouble(7));
                p.setFormato(rs.getInt(8));
                p.setQuantita_magazzino(rs.getInt(9));

            }
            return p;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public ArrayList<Prodotto> retriveAll() {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT nome, descrizione,prezzo, immagine, anno, regione, gradazione, formato, quantita_magazzino, nome_categoria, id FROM prodotto");
            ArrayList<Prodotto> list = new ArrayList<>();
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Prodotto p = new Prodotto();
                p.setNome(rs.getString(1));
                p.setDescrizione(rs.getString(2));
                p.setPrezzo(rs.getDouble(3));
                p.setImmagine(rs.getString(4));
                p.setAnno(rs.getInt(5));
                p.setRegione(rs.getString(6));
                p.setGradazione(rs.getDouble(7));
                p.setFormato(rs.getInt(8));
                p.setQuantita_magazzino(rs.getInt(9));
                p.setId(rs.getInt(10));
                list.add(p);
            }

            return list;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public ArrayList<Prodotto> retriveRand() {
        Random r = new Random();
        int n = r.nextInt((2 - 0) + 1);
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT nome,immagine,prezzo FROM prodotto WHERE id=?");
            ps.setInt(1,n);
            ResultSet rs = ps.executeQuery();
            ArrayList<Prodotto> list=new ArrayList<>();

            while (rs.next()) {
                Prodotto p=new Prodotto();
                p.setNome(rs.getString(1));
                p.setImmagine(rs.getString(2));
                p.setPrezzo(rs.getDouble(3));
                list.add(p);
            }
            return list;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public ArrayList<Prodotto> retriveCategory(String cat) {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT nome,immagine,prezzo, id FROM prodotto WHERE nome_categoria=?");

            ps.setString(1,cat);
            ArrayList<Prodotto> list = new ArrayList<>();
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Prodotto p=new Prodotto();
                p.setNome(rs.getString(1));
                p.setImmagine(rs.getString(2));
                p.setPrezzo(rs.getDouble(3));
                p.setId(rs.getInt(4));
                list.add(p);
            }
            return list;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
