package model;

public class Prodotto {
    private int id;
    private String nome;
    private String descrizione;
    private double prezzo;
    private String immagine;
    private String nome_categoria;
    private int anno;
    private String regione;
    private double gradazione;
    private int formato;

    public Prodotto(int id, String nome, String descrizione, double prezzo, String immagine, String nome_categoria, int anno, String regione, double gradazione, int formato) {
        this.id = id;
        this.nome = nome;
        this.descrizione = descrizione;
        this.prezzo = prezzo;
        this.immagine = immagine;
        this.nome_categoria = nome_categoria;
        this.anno=anno;
        this.regione=regione;
        this.gradazione=gradazione;
        this.formato=formato;
    }

    public Prodotto(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescrizione() {
        return descrizione;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    public double getPrezzo() {
        return prezzo;
    }

    public void setPrezzo(double prezzo) {
        this.prezzo = prezzo;
    }

    public String getImmagine() {
        return immagine;
    }

    public void setImmagine(String immagine) {
        this.immagine = immagine;
    }

    public String getNome_categoria() {
        return nome_categoria;
    }

    public int getAnno() {
        return anno;
    }

    public void setAnno(int anno) {
        this.anno = anno;
    }

    public String getRegione() {
        return regione;
    }

    public void setRegione(String regione) {
        this.regione = regione;
    }

    public double getGradazione() {
        return gradazione;
    }

    public void setGradazione(double gradazione) {
        this.gradazione = gradazione;
    }

    public int getFormato() {
        return formato;
    }

    public void setFormato(int formato) {
        this.formato = formato;
    }

    public void setNome_categoria(String nome_categoria) { this.nome_categoria = nome_categoria; }
}
