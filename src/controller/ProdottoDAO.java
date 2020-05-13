package controller;

import model.Categoria;
import model.ConPool;
import model.Prodotto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/*private int id;
private String nome;
private String descrizione;
private double prezzo;
private String immagine;
private String nome_categoria;*/


public class ProdottoDAO {
    public ArrayList<Prodotto> retriveAll() {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT nome, immagine, prezzo FROM prodotto");
            ArrayList<Prodotto> list = new ArrayList<>();
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Prodotto p = new Prodotto();
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

    public ArrayList<Prodotto> retriveCategory(String cat) {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT nome,immagine,prezzo FROM prodotto WHERE nome_categoria=?1");

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
