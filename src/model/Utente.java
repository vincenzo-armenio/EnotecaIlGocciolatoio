package model;

public class Utente {
   private int id;
   private String email;
   private String username;
   private String password;
   private boolean ruolo;
    /*commento prova git*/

    private int getId()
    {
        return this.id;
    }
    private int setId(int id)
    {
       return  this.id=id;
    }
    private String getEmail()
    {
        return this.email;
    }

    private String setEmail(String email)
    {

        return this.email=email;
    }


    private String getUsername()
    {

        return this.username;
    }
    private String setUsername(String Username)
    {

        return this.username=username;
    }
    private String getPassword()
    {

        return this.password;
    }

    private String setPassword(String password)

    {
       return this.password=password;
    }
    private boolean getRUolo()
    {
        return this.ruolo;
    }

    private boolean setRuolo()
    {
       return this.ruolo=ruolo;
    }
}
