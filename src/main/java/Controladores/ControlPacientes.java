/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Modelos.Pacientes;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Roberto Rico Ruiz
 */
@WebServlet(name = "ControlPacientes", urlPatterns = {"/ControlPacientes"})
public class ControlPacientes extends HttpServlet {
    Pacientes objPacientes = new Pacientes(); 
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
        
       try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String accion = request.getParameter("btnAccion"); 
            
            if(accion.equals("Insertar")){
                
                int idPaciente = Integer.parseInt(request.getParameter("idPaciente")); 
                String nombre = request.getParameter("nombre"); 
                String apellido = request.getParameter("apellido"); 
                String sexo = request.getParameter("sexo"); 
                String email = request.getParameter("email"); 
                String celular = request.getParameter("celular"); 
                String telefono = request.getParameter("telefono"); 
                String ocupacion = request.getParameter("ocupacion"); 
                String direccion = request.getParameter("direccion"); 
                String tipoSangre = request.getParameter("tipoSangre"); 
                String profesion = request.getParameter("profesion"); 
                int id_EPS = Integer.parseInt(request.getParameter("id_EPS"));
               
                
                objPacientes.setIdPaciente(idPaciente);
                objPacientes.setNombre(nombre);
                objPacientes.setApellido(apellido);
                objPacientes.setSexo(sexo);
                objPacientes.setEmail(email);
                objPacientes.setCelular(celular);
                objPacientes.setTelefono(telefono);
                objPacientes.setOcupacion(ocupacion);
                objPacientes.setDireccion(direccion);
                objPacientes.setTipoSangre(tipoSangre);
                objPacientes.setProfesion(profesion);
                objPacientes.setId_EPS(id_EPS);
         
                objPacientes.crearPaciente();
                
                String mensaje = "<html> <body>"+
                                 " <script type='text/javaScript'> "+
                                 "      alert('Paciente insertado correctamente!'); "+
                                 "      window.location.href='index.jsp'"+
                                 "</script> </body> </html>"; 
                
                out.println(mensaje);
            }
            else if (accion.equals("Actualizar")) {
                int idPaciente = Integer.parseInt(request.getParameter("idPaciente")); 
                String nombre = request.getParameter("nombre"); 
                String apellido = request.getParameter("apellido"); 
                String sexo = request.getParameter("sexo"); 
                String email = request.getParameter("email"); 
                String celular = request.getParameter("celular"); 
                String telefono = request.getParameter("telefono"); 
                String ocupacion = request.getParameter("ocupacion"); 
                String direccion = request.getParameter("direccion"); 
                String tipoSangre = request.getParameter("tipoSangre"); 
                String profesion = request.getParameter("profesion"); 
                int id_EPS = Integer.parseInt(request.getParameter("id_EPS"));
               
                objPacientes.setIdPaciente(idPaciente);
                objPacientes.setNombre(nombre);
                objPacientes.setApellido(apellido);
                objPacientes.setSexo(sexo);
                objPacientes.setEmail(email);
                objPacientes.setCelular(celular);
                objPacientes.setTelefono(telefono);
                objPacientes.setOcupacion(ocupacion);
                objPacientes.setDireccion(direccion);
                objPacientes.setTipoSangre(tipoSangre);
                objPacientes.setProfesion(profesion);
                objPacientes.setId_EPS(id_EPS);
         
                objPacientes.actualizarPaciente();
                
                String mensaje = "<html> <body>"+
                                 " <script type='text/javaScript'> "+
                                 "      alert('Paciente actualizado correctamente!'); "+
                                 "      window.location.href='index.jsp'"+
                                 "</script> </body> </html>"; 
                
                out.println(mensaje);

            }
            else if (accion.equals("Eliminar")){
                
                int idPaciente = Integer.parseInt(request.getParameter("idPaciente")); 
                
                objPacientes.setIdPaciente(idPaciente);
                
                String respuesta = objPacientes.eliminarPaciente();
                
                if (respuesta == null){
                    String mensaje = "<html> <body>"+
                                 " <script type='text/javaScript'> "+
                                 "      alert('Paciente eliminado correctamente!'); "+
                                 "      window.location.href='index.jsp'"+
                                 "</script> </body> </html>"; 
                
                    out.println(mensaje);
                }
                else {
                    String mensaje = "<html> <body>"+
                                 " <script type='text/javaScript'> "+
                                 "      alert('Error en la eliminación'); "+
                                 "      window.location.href='index.jsp'"+
                                 "</script> </body> </html>"; 
                
                    out.println(mensaje);
                }
            }   
        }
        catch(Exception error){
            System.out.println("Error Controlador: "+ error);
        } 
    }
    
    public ArrayList listar(){
        try {
            ResultSet consulta = objPacientes.listarPaciente(); 
            ArrayList<Pacientes> listaPacientes = new ArrayList<>(); 
            
            while(consulta.next()){
                objPacientes = new Pacientes(); 
                objPacientes.setIdPaciente(consulta.getInt(1));
                objPacientes.setNombre(consulta.getString(2));
                objPacientes.setApellido(consulta.getString(3));
                objPacientes.setSexo(consulta.getString(4));
                objPacientes.setEmail(consulta.getString(5));
                objPacientes.setCelular(consulta.getString(6));
                objPacientes.setTelefono(consulta.getString(7));
                objPacientes.setOcupacion(consulta.getString(8));
                objPacientes.setDireccion(consulta.getString(9));
                objPacientes.setTipoSangre(consulta.getString(10));
                objPacientes.setProfesion(consulta.getString(11));
                objPacientes.setId_EPS(consulta.getInt(12));
                listaPacientes.add(objPacientes); 
                               
            }
            
            return listaPacientes; 
            
        } catch (Exception error) {
            System.out.println("Error Controlador:" + error);
        }
 
        return null;
    }
    
    public ArrayList consultar(int idPaciente){
        try {
            objPacientes.setIdPaciente(idPaciente);
            ResultSet consulta = objPacientes.consultarPaciente(); 
            ArrayList<Pacientes> listaPacientes = new ArrayList<>(); 
            
            while(consulta.next()){
                objPacientes = new Pacientes(); 
                objPacientes.setIdPaciente(consulta.getInt(1));
                objPacientes.setNombre(consulta.getString(2));
                objPacientes.setApellido(consulta.getString(3));
                objPacientes.setSexo(consulta.getString(4));
                objPacientes.setEmail(consulta.getString(5));
                objPacientes.setCelular(consulta.getString(6));
                objPacientes.setTelefono(consulta.getString(7));
                objPacientes.setOcupacion(consulta.getString(8));
                objPacientes.setDireccion(consulta.getString(9));
                objPacientes.setTipoSangre(consulta.getString(10));
                objPacientes.setProfesion(consulta.getString(11));
                objPacientes.setId_EPS(consulta.getInt(12));
                listaPacientes.add(objPacientes); 
            }
            
            return listaPacientes; 
            
        } catch (Exception error) {
            System.out.println("Error Controlador:" + error);
        }
 
        return null;
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
        processRequest(request, response);
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
