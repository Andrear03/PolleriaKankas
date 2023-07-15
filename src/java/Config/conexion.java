/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;

import java.sql.*;

/**
 *
 * @author hp
 */
public class conexion {
    private static Connection cnx=null;
    
    public conexion(){
         try{
                Class.forName("com.mysql.jdbc.Driver");
                 cnx=DriverManager.getConnection("jdbc:mysql://localhost:3306/Ragekankas","root","");
                
            }catch(ClassNotFoundException | SQLException ex){
                System.out.println("Error conexion "+ex.getMessage());
            }
    }
    
    public Connection getConnection(){
        return this.cnx;
    }
    
    public static void cerrar() throws SQLException{
        if (cnx!=null){
            cnx.close();
        }
        
    }
    
           
        
        
}
