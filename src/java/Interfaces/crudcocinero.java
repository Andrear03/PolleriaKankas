/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.cocinero;
import java.util.List;

/**
 *
 * @author OVALTECH
 */
public interface crudcocinero {
    public List listar();
    public cocinero list(int cocinero);
    public boolean add(cocinero co);
}
