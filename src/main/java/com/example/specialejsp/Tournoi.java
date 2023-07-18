package com.example.specialejsp;

public class Tournoi {
    private int id;
    private String nom;
    private String code;


    public Tournoi(int id, String nom, String code) {
        this.id = this.id++;
        this.nom = nom;
        this.code = code;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

}

