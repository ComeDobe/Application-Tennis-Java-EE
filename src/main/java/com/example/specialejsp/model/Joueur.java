package com.example.specialejsp.model;

public class Joueur {
    private int id;
    private String nom;
    private String prenom;
    private String sexe;

    public Joueur(String nom, String prenom, String sexe) {
        this.id = this.id;
        this.nom = nom;
        this.prenom = prenom;
        this.sexe = sexe;
    }

    public Joueur() {

    }

    public Joueur(String nom, String prenom) {
    }

//    public Joueur() {
//
//    }

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

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getSexe() {
        return sexe;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }
}

