/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;
import Modelo.Proveedores;
import java.util.List;

/**
 *
 * @author hp
 */
public interface crudProveedor {
    public List listar();
    public Proveedores list(String id);
    public boolean add(Proveedores pro);
    public boolean edit(Proveedores pro);

}
