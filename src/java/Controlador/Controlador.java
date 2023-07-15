/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.*;
import ModeloDAO.*;
import java.awt.Color;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.swing.JOptionPane;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartFrame;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.util.Rotation;

public class Controlador extends HttpServlet {
     private static String emailFrom = "example@gmail.com";
    private static String passwordFrom = "agregartucontraseña";
    private String emailTo;
    private String subject;
    private String content;

    private Properties mProperties;
    private Session mSession;
    private MimeMessage mCorreo;
    public String numCadena;
    public String valor;
   
    
    public Controlador() {
        
        mProperties = new Properties();
    }
       
    public void createEmail() {
        
        Random rnd = new Random();
        int number = rnd.nextInt(999999);
        numCadena= String.valueOf(number);

        
        emailTo = "example@gmail.com";
        subject = "tu codigo es:";
        content = numCadena;
        
         // Simple mail transfer protocol
        mProperties.put("mail.smtp.host", "smtp.gmail.com");
        mProperties.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        mProperties.setProperty("mail.smtp.starttls.enable", "true");
        mProperties.setProperty("mail.smtp.port", "587");
        mProperties.setProperty("mail.smtp.user",emailFrom);
        mProperties.setProperty("mail.smtp.ssl.protocols", "TLSv1.2");
        mProperties.setProperty("mail.smtp.auth", "true");
        
        mSession = Session.getDefaultInstance(mProperties);
        

        try {
            mCorreo = new MimeMessage(mSession);
            mCorreo.setFrom(new InternetAddress(emailFrom));
            mCorreo.setRecipient(Message.RecipientType.TO, new InternetAddress(emailTo));
            mCorreo.setSubject(subject);
            mCorreo.setText(content, "ISO-8859-1", "html");
                     
            
        } catch (AddressException ex) {
            Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void sendEmail() {
        try {
            Transport mTransport = mSession.getTransport("smtp");
            mTransport.connect(emailFrom, passwordFrom);
            mTransport.sendMessage(mCorreo, mCorreo.getRecipients(Message.RecipientType.TO));
            mTransport.close();
            
            JOptionPane.showMessageDialog(null, "Correo enviado");
        } catch (NoSuchProviderException ex) {
            Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession(true);      
        Proveedores pro= new Proveedores();
        ProveedoresDAO prodao = new ProveedoresDAO();
        Usuarios usu= new Usuarios();
        UsuariosDAO udao= new UsuariosDAO();
        cocineroDAO codao= new cocineroDAO();
        cocinero co= new cocinero();
        String acceso = "";
        String action = request.getParameter("accion");
        switch(action){
            case "listarProveedores":
                acceso = "VistaProveedores/index.jsp";
                break;
            case "AgregarProveedores":
            acceso = "VistaProveedores/agregarProveedores.jsp";
            if (request.getParameter("AgregarProveedoresDB") != null) {
                try {
                    pro.setDocproveedor(request.getParameter("txtdocproveedor"));
                    pro.setNomempresa(request.getParameter("txtnomempresa"));
                    pro.setNomproveedor(request.getParameter("txtnomproveedor"));
                    pro.setNumero(Integer.parseInt(request.getParameter("txtnumero")));
                    pro.setRazonsocial(request.getParameter("txtrazonsocial"));
                    pro.setDireccion(request.getParameter("txtdireccion"));
                    pro.setCorreo(request.getParameter("txtcorreo"));
                    pro.setEstado(request.getParameter("txtestado"));
                    if (prodao.add(pro) == true) {
                        System.out.println("se ha Agregado correctamente");
                    } else {
                        System.out.println("error de base de datos");
                    }

                    acceso = "VistaProveedores/index.jsp";

                } catch (Exception e) {
                    System.out.println(e);
                }
            }
            break;

            case "EditarProveedores":
            acceso = "VistaProveedores/editarProveedores.jsp";
            request.setAttribute("codpro", request.getParameter("txtpro"));
            if (request.getParameter("EditarProveedoresDB") != null) {
                try {
                    pro.setDocproveedor(request.getParameter("txtdocproveedor"));
                    pro.setNomempresa(request.getParameter("txtnomempresa"));
                    pro.setNomproveedor(request.getParameter("txtnomproveedor"));
                    pro.setNumero(Integer.parseInt(request.getParameter("txtnumero")));
                    pro.setRazonsocial(request.getParameter("txtrazonsocial"));
                    pro.setDireccion(request.getParameter("txtdireccion"));
                    pro.setCorreo(request.getParameter("txtcorreo"));
                    pro.setEstado(request.getParameter("txtestado"));

                    if (prodao.edit(pro) == true) {
                        System.out.println("se ha Editado correctamente");
                    } else {
                        System.out.println("error de base de datos");
                    }

                    acceso = "VistaProveedores/index.jsp";

                } catch (Exception e) {
                    System.out.println(e);
                }

            }
            break;
            case "pedido":
                 acceso = "VistaPedido/index.jsp";
                 break;
                 
            case "AgregarPedido":
            acceso = "VistaPedido/agregarpedido.jsp";
            if (request.getParameter("AgregarPedidoDB") != null) {
                try {
                   
                    co.setFkidusuario(Integer.parseInt(request.getParameter("txtidusuario")));
                    co.setFecha(request.getParameter("txtfecha"));
                    co.setContenido(request.getParameter("txtcontenido"));
 
                    if (codao.add(co) == true) {
                        System.out.println("se ha Agregado correctamente");
                    } else {
                        System.out.println("error de base de datos");
                    }

                    acceso = "VistaPedido/index.jsp";

                } catch (Exception e) {
                    System.out.println(e);
                }
            }
            break;
   
            case "LogearUsuario":
            acceso = "Login.jsp";
            if (request.getParameter("LogearUsuarioForm") != null) {
                try {
                    LoginDAO logindao=new LoginDAO();
                    String user=request.getParameter("txtEmail");
                    String clave=request.getParameter("txtPassword");
                    
                    usu=logindao.loginUsuario(user, clave);
                    
                      if(usu.getEstado().equalsIgnoreCase("A")){
                          if(usu.getFkidrol()==2){  
                            createEmail(); 
                            sendEmail();
                            acceso = "verificacion.jsp";
                            sesion.setAttribute("fkidrolusuario", usu.getFkidrol());
                            sesion.setAttribute("nomusuariologin", usu.getNomusuario());
                        }
                        else if(usu.getFkidrol()==3){
                         acceso = "Cocinero.jsp";
                         sesion.setAttribute("fkidrolusuario", usu.getFkidrol());
                         sesion.setAttribute("nomusuariologin", usu.getNomusuario());
                         sesion.setAttribute("id",usu.getIdusuario());
                        }
                        else{
                         acceso = "Login.jsp";
                        }
                      }
                      
                } catch (Exception e) {
                    System.out.println(e);
                }

            } break;
            case"listarEP":
                DefaultCategoryDataset line_chart_dataset = new DefaultCategoryDataset();
                ResultSet rs4;
                NegConsultas objNcli4=new NegConsultas();
                try{
                    rs4= objNcli4.MtdPollo();
                    while(rs4.next()){
                        int a=rs4.getInt("d.preciocompra");
                        String y=rs4.getString("d.fechavencimiento");

                        line_chart_dataset.addValue(a, "Precio pollo", y);
                    }
                    JFreeChart chart=ChartFactory.createLineChart("Precio del pollo por unidad",
                        "Fechas","Precio",line_chart_dataset,PlotOrientation.VERTICAL,
                        true,true,false);
                ChartFrame chartPanel = new ChartFrame("hola",chart);
                response.setContentType("image/png");
                   OutputStream os = response.getOutputStream();
                   ChartUtilities.writeChartAsPNG(os, chart, 2120,1080);
                }catch(SQLException ex){
                    System.out.println(ex.getMessage());
                }
                
            case "listarPI":
                DefaultCategoryDataset dataset2 = new DefaultCategoryDataset();
                ResultSet rs;
                NegConsultas objNcli2=new NegConsultas();
                try{
                    rs= objNcli2.MtdENTRADA();
                    while(rs.next()){


                        String pedido=rs.getString("p.codigo");
                        int ventas=rs.getInt("Costo");
                        String año=rs.getString("Producto");
                        dataset2.setValue(ventas,pedido,año); 
                    } 
                    JFreeChart chart = ChartFactory.createBarChart3D
                    ("Reporte de entradas por Mes ","Mes", "Cantidad", 
                    dataset2, PlotOrientation.VERTICAL, true,true, false);
                    chart.setBackgroundPaint(Color.cyan);
                    chart.getTitle().setPaint(Color.black); 
                    CategoryPlot p = chart.getCategoryPlot(); 
                    p.setRangeGridlinePaint(Color.red); 
                    ChartFrame chartPanel = new ChartFrame("Productos entrados",chart);
                            response.setContentType("image/png");
                   OutputStream os = response.getOutputStream();
                   ChartUtilities.writeChartAsPNG(os, chart, 2120,1080);
                }catch(SQLException ex){
                    System.out.println(ex.getMessage());
                }
             break;
            case "listarPC":
               DefaultPieDataset defaultpiedataset = new DefaultPieDataset();
                ResultSet rs1;
                NegConsultas objNcli1=new NegConsultas ();
                try{
                    rs1= objNcli1.MtdCocinero();
                    while(rs1.next()){

                        String codigo=rs1.getString("Cocinero");
                        defaultpiedataset.setValue(codigo, Double.valueOf(rs1.getString("Mensajes"))); 

                    }
                    JFreeChart chart = ChartFactory.createPieChart3D("PEDIDOS REALIZADOS",  defaultpiedataset, true, true, false); 
                        PiePlot3D pieplot3d = (PiePlot3D)chart.getPlot(); 
                        pieplot3d.setDepthFactor(0.5); 
                        pieplot3d.setStartAngle(290D); 
                        pieplot3d.setDirection(Rotation.CLOCKWISE); 
                        pieplot3d.setForegroundAlpha(0.5F); 
                        ChartFrame chartPanel = new ChartFrame("Pedidos Realizados",chart);
                        response.setContentType("image/png");
                   OutputStream os = response.getOutputStream();
                   ChartUtilities.writeChartAsPNG(os, chart, 2120,1080);
                }catch(SQLException ex){
                    System.out.println(ex.getMessage());
                }
                break;
            case "listarEF":
                DefaultCategoryDataset dataset3 = new DefaultCategoryDataset();
                   ResultSet rs3;
                   NegConsultas objNcli3=new NegConsultas();
                   try{
                       rs3= objNcli3.Mtdtotal();
                       while(rs3.next()){


                           String pedido=rs3.getString("a.identrada");
                           int ventas=rs3.getInt("a.total");
                           String año=rs3.getString("a.fecharegistro");
                           dataset3.setValue(ventas,pedido,año); 
                       } 
                       JFreeChart chart = ChartFactory.createBarChart3D
                       ("Reportes de Entradas del Mes","Mes", "Cantidad", 
                       dataset3, PlotOrientation.VERTICAL, true,true, false);
                       chart.setBackgroundPaint(Color.cyan);
                       chart.getTitle().setPaint(Color.black); 
                       CategoryPlot p = chart.getCategoryPlot(); 
                       p.setRangeGridlinePaint(Color.red); 
                       ChartFrame chartPanel = new ChartFrame("Reporte de Entradas del mes de paquetes",chart);
                               response.setContentType("image/png");
                   OutputStream os = response.getOutputStream();
                   ChartUtilities.writeChartAsPNG(os, chart, 2120,1080);
                   }catch(SQLException ex){
                       System.out.println(ex.getMessage());
                   }
            break;
            case "ListarEPA":
                DefaultCategoryDataset line_chart_dataset2 = new DefaultCategoryDataset();
               ResultSet rs5;
               NegConsultas objNcli5=new NegConsultas();
               try{
                   rs5= objNcli5.MtdPapas();
                   while(rs5.next()){
                       int a=rs5.getInt("d.preciocompra");
                       String y=rs5.getString("d.fechavencimiento");

                       line_chart_dataset2.addValue(a, "Precio papa", y);
                   }
                   JFreeChart chart=ChartFactory.createLineChart("Precio de la papa por unidad",
                       "Fechas","Precio",line_chart_dataset2,PlotOrientation.VERTICAL,
                       true,true,false);
                       response.setContentType("image/png");
                   OutputStream os = response.getOutputStream();
                   ChartUtilities.writeChartAsPNG(os, chart, 2120,1080);
               ChartFrame chartPanel = new ChartFrame("hola",chart);
               }catch(SQLException ex){
                   System.out.println(ex.getMessage());
               }
            break;
            
            case "LogoutUsuario":
                acceso="index.jsp";
                sesion.invalidate();
                break;
            
            
            case "loguear":    
            acceso="verificacion.jsp";
                
            if (request.getParameter("verificacion").equals(numCadena)) {
                 //JOptionPane.showMessageDialog(null,mapa.numCadena);
                 try {   
                         acceso ="kankas.jsp"; 
                    
                } catch (Exception e) {
                    System.out.println(e);
                }

               }
             break;
        
            case "generar":
                acceso="graficos.jsp";
                break;
      

            case "listarUsuarios":
            acceso = "VistaUsuarios/index.jsp";
            break;
            case "AgregarUsuarios":
            acceso = "VistaUsuarios/agregarUsuarios.jsp";
            if (request.getParameter("AgregarUsuariosDB") != null) {
                try {
                        usu.setIdusuario(Integer.parseInt(request.getParameter("txtidusuario")));
                        usu.setNomusuario(request.getParameter("txtnomusuario"));
                        usu.setEmail(request.getParameter("txtemail"));
                        usu.setClave(request.getParameter("txtclave"));
                        usu.setFkidrol(Integer.parseInt(request.getParameter("txtfkidrol")));
                        usu.setEstado(request.getParameter("txtestado"));
                    if (udao.add(usu) == true) {
                        System.out.println("se ha Agregado correctamente");
                    } else {
                        System.out.println("error de base de datos");
                    }

                    acceso = "VistaUsuarios/index.jsp";

                } catch (Exception e) {
                    System.out.println(e);
                }

            } 
            break;
            case "EditarUsuarios":
            acceso = "VistaUsuarios/editarUsuarios.jsp";
            request.setAttribute("user", request.getParameter("txtuser"));
            if (request.getParameter("EditarUsuariosDB") != null) {
                try {
                        usu.setIdusuario(Integer.parseInt(request.getParameter("txtidusuario")));
                        usu.setNomusuario(request.getParameter("txtnomusuario"));
                        usu.setEmail(request.getParameter("txtemail"));
                        usu.setClave(request.getParameter("txtclave"));
                        usu.setFkidrol(Integer.parseInt(request.getParameter("txtfkidrol")));
                        usu.setEstado(request.getParameter("txtestado"));

                    if (udao.edit(usu) == true) {
                        System.out.println("se ha Editado correctamente");
                    } else {
                        System.out.println("error de base de datos");
                    }
                    
                    acceso = "VistaUsuarios/index.jsp";

                } catch (Exception e) {
                    System.out.println(e);
                }

            }
            break;
         
        
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request,response);
    
    }
    
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
