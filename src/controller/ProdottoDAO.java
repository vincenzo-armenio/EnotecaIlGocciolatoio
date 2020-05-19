package controller;

import model.Categoria;
import model.ConPool;
import model.Prodotto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Random;

/*private int id;
private String nome;
private String descrizione;
private double prezzo;
private String immagine;
private String nome_categoria;*/


public class ProdottoDAO {
    public Prodotto retriveOne(int n){
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT nome, descrizione,prezzo, immagine, anno, regione, gradazione, formato, quantita_acquistata, quantita_magazzino, nome_categoria FROM prodotto WHERE id=?");
            ps.setInt(1,n);
            ResultSet rs = ps.executeQuery();
            Prodotto p = new Prodotto();
            while (rs.next()) {
                p.setNome(rs.getString(1));
                p.setDescrizione(rs.getString(2));
                p.setPrezzo(rs.getDouble(3));
                p.setImmagine(rs.getString(4));
                p.setAnno(rs.getInt(5));
                p.setRegione(rs.getString(6));
                p.setGradazione(rs.getDouble(7));
                p.setFormato(rs.getInt(8));
                p.setQuantita_acquistata(rs.getInt(9));
                p.setQuantita_magazzino(rs.getInt(10));
            }
            return p;
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
                    con.prepareStatement("SELECT nome, descrizione,prezzo, immagine, anno, regione, gradazione, formato, quantita_acquistata, quantita_magazzino, nome_categoria FROM prodotto WHERE nome=?");
            ps.setString(1,nome);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Prodotto p=new Prodotto();
                p.setNome(rs.getString(1));
                p.setDescrizione(rs.getString(2));
                p.setPrezzo(rs.getDouble(3));
                p.setImmagine(rs.getString(4));
                p.setAnno(rs.getInt(5));
                p.setRegione(rs.getString(6));
                p.setGradazione(rs.getDouble(7));
                p.setFormato(rs.getInt(8));
                p.setQuantita_acquistata(rs.getInt(9));
                p.setQuantita_magazzino(rs.getInt(10));
                return p;
            }
            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public ArrayList<Prodotto> retriveAll() {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT nome, descrizione,prezzo, immagine, anno, regione, gradazione, formato, quantita_acquistata, quantita_magazzino, nome_categoria FROM prodotto");
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
                p.setQuantita_acquistata(rs.getInt(9));
                p.setQuantita_magazzino(rs.getInt(10));
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
                    con.prepareStatement("SELECT nome,immagine,prezzo FROM prodotto WHERE nome_categoria=?");

            ps.setString(1,cat);
            ArrayList<Prodotto> list = new ArrayList<>();
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Prodotto p=new Prodotto();
                p.setId(rs.getInt(1));
                p.setNome(rs.getString(2));
                p.setDescrizione(rs.getString(3));
                p.setPrezzo(rs.getDouble(4));
                list.add(p);
            }
            return list;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
