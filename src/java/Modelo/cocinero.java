/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Interfaces.interfacemensaje;


/**
 *
 * @author OVALTECH
 */
public class cocinero implements interfacemensaje {
    
    private int idmensaje;
    private int fkidusuario;
    private String fecha;
    private String contenido;
    
    public cocinero(int idmensaje, int fkidusuario, String fecha, String contenido) {
        this.idmensaje = idmensaje;
        this.fkidusuario = fkidusuario;
        this.fecha = fecha;
        this.contenido = contenido;
    }

    public cocinero() {
    }
    
    @Override
    public int getIdmensaje() {
        return idmensaje;
    }

    @Override
    public void setIdmensaje(int idmensaje) {
        this.idmensaje = idmensaje;
    }

    @Override
    public int getFkidusuario() {
        return fkidusuario;
    }

    @Override
    public void setFkidusuario(int Fkidusuario) {
        this.fkidusuario = fkidusuario;
    }

    @Override
    public String getFecha() {
        return fecha;
    }

    @Override
    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    @Override
    public String getContenido() {
        return contenido;
    }

    @Override
    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

}
