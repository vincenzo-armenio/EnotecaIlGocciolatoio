package model;

import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import static sun.management.snmp.jvminstr.JvmThreadInstanceEntryImpl.ThreadStateMap.Byte1.other;


public class Utente {
    private int id;
    private String email;
    private String username;
    private String pass;
    private String ruolo;
    private boolean accesso;

    public Utente(){}

    public Utente(int id, String email, String username, String pass, String ruolo, boolean accesso) {
        this.id = id;
        this.email = email;
        this.username = username;
        this.pass = pass;
        this.ruolo = ruolo;
        this.accesso=accesso;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String password) {
        //password è  inserita dall’utente
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-1");
            digest.reset();
            digest.update(password.getBytes(StandardCharsets.UTF_8));
            this.pass = String.format("%040x", new BigInteger(1, digest.digest()));
        } catch (NoSuchAlgorithmException e)
        { throw new RuntimeException(e); }
    }

    public String getRuolo() {
        return ruolo;
    }

    public void setRuolo(String ruolo) {
        this.ruolo = ruolo;
    }

    public boolean isAccesso() {
        return accesso;
    }

    public void setAccesso(boolean accesso) {
        this.accesso = accesso;
    }

    @Override
    public String toString() {
        return "Utente [id=" + id + ", username=" + username + ", passwordhash=" + pass + ", email=" + email + ", ruolo=" + ruolo + "]";
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((email == null) ? 0 : email.hashCode());
        result = prime * result + id;
        result = prime * result + ((pass == null) ? 0 : pass.hashCode());
        result = prime * result + ((username == null) ? 0 : username.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Utente other = (Utente) obj;
        if (ruolo != other.ruolo)
            return false;
        if (email == null) {
            if (other.email != null)
                return false;
        } else if (!email.equals(other.email))
            return false;
        if (id != other.id)
            return false;
        if (pass == null) {
            if (other.pass != null)
                return false;
        } else if (!pass.equals(other.pass))
            return false;
        if (username == null) {
            if (other.username != null)
                return false;
        } else if (!username.equals(other.username))
            return false;
        return true;
    }

}
