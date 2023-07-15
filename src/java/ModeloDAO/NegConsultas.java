/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.conexion;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartFrame;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;

/**
 *
 * @author OVALTECH
 */
public class NegConsultas {
    conexion cn=new conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Statement st;
    public ResultSet MtdCocinero()
    {
        String sql="SELECT u.nomusuario AS Cocinero, Count(m.fkidusuario) as Mensajes FROM tbusuario u JOIN tbmensaje m ON u.idusuario= m.fkidusuario GROUP BY u.nomusuario ORDER BY Count(m.fkidusuario) DESC;";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            return rs;

        }catch (SQLException e){
            System.out.print(e.getMessage());
            return rs=null;
        }
    }
    public ResultSet MtdENTRADA()
    {
        String sql="SELECT p.codigo, p.descripcion AS Producto, SUM(dt.subtotal) as Costo FROM tbproductos p JOIN detalleentrada dt ON dt.fkcodigo= p.codigo join tbentradas d on dt.fkcodigoentrada=d.identrada GROUP BY p.codigo ORDER BY SUM(dt.subtotal) DESC;";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            return rs;

        }catch (SQLException e){
            System.out.print(e.getMessage());
            return rs=null;
        }
    }
     public ResultSet Mtdtotal()
    {
        
        String sql="SELECT a.identrada,a.total,a.fecharegistro FROM tbentradas  AS a ";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            return rs;

        }catch (SQLException e){
            System.out.print(e.getMessage());
            return rs=null;
        }
    }
          public ResultSet MtdPollo()
    {
        
        String sql="SELECT d.fechavencimiento,d.preciocompra FROM detalleentrada  AS d INNER JOIN tbproductos AS p ON p.codigo=d.fkcodigo WHERE d.fkcodigo=1";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            return rs;

        }catch (SQLException e){
            System.out.print(e.getMessage());
            return rs=null;
        }
    }
          public ResultSet MtdPapas()
    {
        
        String sql="SELECT d.fechavencimiento,d.preciocompra FROM detalleentrada  AS d INNER JOIN tbproductos AS p ON p.codigo=d.fkcodigo WHERE d.fkcodigo=2";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            return rs;

        }catch (SQLException e){
            System.out.print(e.getMessage());
            return rs=null;
        }
    }

 
}
