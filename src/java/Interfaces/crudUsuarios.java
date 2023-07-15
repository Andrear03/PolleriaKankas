/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;
import java.util.List;
import Modelo.Usuarios;


/**
 *
 * @author Diego Andre Aranda Reyes
 */
public interface crudUsuarios {
    public List listar();
    public Usuarios list(int idusuario);
    public boolean add(Usuarios usu);
    public boolean edit(Usuarios usu);
}
