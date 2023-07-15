/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.conexion;
import Interfaces.crudUsuarios;
import Modelo.Usuarios;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Diego Andre Aranda Reyes 
 */
public class UsuariosDAO implements crudUsuarios{
    
    conexion cn=new conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Statement st;
    
    @Override
    public List listar() {
        ArrayList<Usuarios> list = new ArrayList<>();
        String sql="select * from tbusuario";
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                Usuarios usu=new Usuarios();
                usu.setIdusuario(Integer.parseInt(rs.getString("idusuario")));
                usu.setNomusuario(rs.getString("nomusuario"));
                usu.setEmail(rs.getString("email"));
                usu.setClave(rs.getString("clave"));
                usu.setFkidrol(Integer.parseInt(rs.getString("fkidrol")));
                usu.setEstado(rs.getString("estado"));
                list.add(usu);
            }
            
        }catch(SQLException e){
            System.out.println("error"+e.toString());
        }
        return list;
    }

    @Override
    public Modelo.Usuarios list(int id) {
        String sql="select * from tbusuario where idusuario="+id;
        Usuarios usu=new Usuarios();
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                
                usu.setIdusuario(Integer.parseInt(rs.getString("idusuario")));
                usu.setNomusuario(rs.getString("nomusuario"));
                usu.setEmail(rs.getString("email"));
                usu.setClave(rs.getString("clave"));
                usu.setFkidrol(Integer.parseInt(rs.getString("fkidrol")));
                usu.setEstado(rs.getString("estado"));
                
            }
           
        }catch(SQLException e){
            System.out.println("error"+e.toString());
            return null;
        }
        
        return usu;
    }
    @Override
    public boolean add(Usuarios usu) {
                String sql="insert into tbusuario values("+usu.getIdusuario()+",'"+usu.getNomusuario()+"','"+usu.getEmail()+"','"+usu.getClave()+"','"+usu.getFkidrol()+"','"+usu.getEstado()+"')";
        
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
    public boolean edit(Usuarios usu) {
        String sql="update tbusuario set nomusuario='"+usu.getNomusuario()+"',email='"+usu.getEmail()+"',clave='"+usu.getClave()+"',fkidrol='"+usu.getFkidrol()+"',estado='"+usu.getEstado()+"'where idusuario="+usu.getIdusuario();
        
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
    }




