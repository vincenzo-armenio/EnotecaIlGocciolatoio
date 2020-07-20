package model;

public class Ordine {
    private int id;
    private int id_utente;

    public Ordine(int id, int id_utente) {
        this.id = id;
        this.id_utente = id_utente;
    }

    public Ordine(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_utente() {
        return id_utente;
    }

    public void setId_utente(int id_utente) {
        this.id_utente = id_utente;
    }
}


