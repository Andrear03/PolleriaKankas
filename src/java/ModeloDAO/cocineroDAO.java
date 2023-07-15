/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.conexion;
import Interfaces.crudcocinero;
import Modelo.cocinero;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class cocineroDAO implements crudcocinero{
    conexion cn=new conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Statement st;    
    @Override
        public boolean add(cocinero co) {
                String sql="insert into tbmensaje values("+co.getIdmensaje()+","+co.getFkidusuario()+",'"+co.getFecha()+"','"+co.getContenido()+"')";
        
        try{
             con=(Connection) cn.getConnection();
            st=con.createStatement();
            st.executeUpdate(sql);
                   
                   
        }catch(SQLException e){
            System.out.println("error"+e.toString());
            return false;
        }
        return true;
        }
        @Override
    public List listar() {
        ArrayList<cocinero> list = new ArrayList<>();
        String sql="select * from tbmensaje";
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                cocinero co=new cocinero();
                co.setIdmensaje(Integer.parseInt(rs.getString("idmensaje")));
                co.setFkidusuario(Integer.parseInt(rs.getString("fkidusuario")));
                co.setFecha(rs.getString("fecha"));
                co.setContenido(rs.getString("contenido"));
               
                list.add(co);
            }
            
        }catch(SQLException e){
            System.out.println("error"+e.toString());
        }
        return list;
    }

    @Override
    public Modelo.cocinero list(int cocinero) {
        String sql="select * from tbmensaje where idmensaje="+cocinero;
        cocinero co=new cocinero();
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                
                co.setIdmensaje(Integer.parseInt(rs.getString("idmensaje")));
                co.setFkidusuario(Integer.parseInt(rs.getString("fkidusuario")));
                co.setFecha(rs.getString("fecha"));
                co.setContenido(rs.getString("contenido"));
                
            }
           
        }catch(SQLException e){
            System.out.println("error"+e.toString());
            return null;
        }
        
        return co;
    }    
}
