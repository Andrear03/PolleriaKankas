/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Interfaces;

import Modelo.Usuarios;

/**
 *
 * @author Diego
 */
public interface interfacemensaje {
    public int getIdmensaje();
    public void setIdmensaje(int id);
    public int getFkidusuario();
    public void setFkidusuario(int fkIdUsuario);
    public String getFecha();
    public void setFecha(String fecha);
    public String getContenido();
    public void setContenido(String contenido);
}
