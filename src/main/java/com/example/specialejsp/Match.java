package com.example.specialejsp;

public class Match {

    private int id;
    private int id_vainqueur;
    private int id_finaliste;
    public Match(int id, int id_vainqueur, int id_finaliste) {
        this.id = id;
        this.id_vainqueur = id_vainqueur;
        this.id_finaliste = id_finaliste;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_vainqueur() {
        return id_vainqueur;
    }

    public void setId_vainqueur(int id_vainqueur) {
        this.id_vainqueur = id_vainqueur;
    }

    public int getId_finaliste() {
        return id_finaliste;
    }

    public void setId_finaliste(int id_finaliste) {
        this.id_finaliste = id_finaliste;
    }

    public void setVainqueur(int vainqueur) {
    }

    public void setFinaliste(int finaliste) {
    }

}
