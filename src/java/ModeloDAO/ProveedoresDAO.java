package ModeloDAO;
import java.util.*;
import java.sql.*;
import Config.*;
import java.util.ArrayList;
import Interfaces.crudProveedor;
/**
 *
 * @author Diego Andre Aranda Reyes
 */
public class ProveedoresDAO implements crudProveedor{
    
    conexion cn=new conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Statement st;
    
   
    @Override
    public List listar() {
        ArrayList<Modelo.Proveedores> list=new ArrayList<>();
        String sql="select * from tbproveedor";
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                Modelo.Proveedores pro=new Modelo.Proveedores();
                pro.setDocproveedor(rs.getString("docproveedor"));
                pro.setNomempresa(rs.getString("nomempresa"));
                pro.setNomproveedor(rs.getString("nomproveedor"));
                pro.setNumero(Integer.parseInt(rs.getString("numero")));
                pro.setRazonsocial(rs.getString("razonsocial"));
                pro.setDireccion(rs.getString("direccion"));
                pro.setCorreo(rs.getString("correo"));
                pro.setEstado(rs.getString("estado"));
                list.add(pro);
                
            }
            
        }catch(SQLException e){
            System.out.println("error"+e.toString());
        }
        return list;
    }

    
    @Override
    public Modelo.Proveedores list(String  id) {
        String sql="select * from tbproveedor where docproveedor="+id;
        Modelo.Proveedores pro=new Modelo.Proveedores();
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                
                pro.setDocproveedor(rs.getString("docproveedor"));
                pro.setNomempresa(rs.getString("nomempresa"));
                pro.setNomproveedor(rs.getString("nomproveedor"));
                pro.setNumero(Integer.parseInt(rs.getString("numero")));
                pro.setRazonsocial(rs.getString("razonsocial"));
                pro.setDireccion(rs.getString("direccion"));
                pro.setCorreo(rs.getString("correo"));
                pro.setEstado(rs.getString("estado"));
            }
           
        }catch(SQLException e){
            System.out.println("error"+e.toString());
            return null;
        }
        
        return pro;
    }

    @Override
    public boolean add(Modelo.Proveedores pro) {
        String sql="insert into tbproveedor values('"+pro.getDocproveedor()+"','"+pro.getNomempresa()+"','"+pro.getNomproveedor()+"',"+pro.getNumero()+",'"+pro.getRazonsocial()+"','"+pro.getDireccion()+"','"+pro.getCorreo()+"','"+pro.getEstado()+"')";
        
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
    public boolean edit(Modelo.Proveedores pro) {
        String sql="update tbproveedor set nomempresa='"+pro.getNomempresa()+"',nomproveedor='"+pro.getNomproveedor()+"',numero="+pro.getNumero()+",razonsocial='"+pro.getRazonsocial()+"',direccion='"+pro.getDireccion()+"',correo='"+pro.getCorreo()+"',estado='"+pro.getEstado()+"' where docproveedor="+pro.getDocproveedor();
        
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
