/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;


import Config.*;
import Interfaces.interfazLogin;
import Modelo.Usuarios;
import java.sql.*;


/**
 *
 * @author diego
 */
public class LoginDAO implements interfazLogin{
    conexion cn=new conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Statement st;
    
  public Usuarios loginUsuario(String user, String clave) {
        
        Usuarios objuser=new Usuarios();
        String sql="select * from tbusuario where email='"+user+"' and clave='"+clave+"' ";
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            if (rs!=null){
            
            while(rs.next()){
                objuser.setIdusuario(Integer.parseInt(rs.getString("idusuario")));
                objuser.setNomusuario(rs.getString("nomusuario"));
                objuser.setEmail(rs.getString("email"));
                objuser.setClave(rs.getString("clave"));
                objuser.setFkidrol(Integer.parseInt(rs.getString("fkidrol")));
                objuser.setEstado(rs.getString("estado"));
                return objuser;
            }
            
            
            }
            
        }catch(SQLException e){
            System.out.println("error"+e.toString());
        }
        return null;
    }
}

