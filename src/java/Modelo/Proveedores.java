/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Usuario
 */
public class Proveedores {

    public Proveedores() {
    }

    public Proveedores(String docproveedor, String nomempresa, String nomproveedor, int numero, String razonsocial, String direccion, String correo, String estado) {
        this.docproveedor = docproveedor;
        this.nomempresa = nomempresa;
        this.nomproveedor = nomproveedor;
        this.numero = numero;
        this.razonsocial = razonsocial;
        this.direccion = direccion;
        this.correo = correo;
        this.estado = estado;
    }

    public String getDocproveedor() {
        return docproveedor;
    }

    public void setDocproveedor(String docproveedor) {
        this.docproveedor = docproveedor;
    }

    public String getNomempresa() {
        return nomempresa;
    }

    public void setNomempresa(String nomempresa) {
        this.nomempresa = nomempresa;
    }

    public String getNomproveedor() {
        return nomproveedor;
    }

    public void setNomproveedor(String nomproveedor) {
        this.nomproveedor = nomproveedor;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getRazonsocial() {
        return razonsocial;
    }

    public void setRazonsocial(String razonsocial) {
        this.razonsocial = razonsocial;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    private String docproveedor;
    private String nomempresa;
    private String nomproveedor;
    private int numero;
    private String razonsocial;
    private String direccion;
    private String correo;
    private String estado;
}
