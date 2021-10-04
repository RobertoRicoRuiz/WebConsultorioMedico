/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
/**
 *
 * @author Roberto Rico Ruiz
 */
public class Pacientes{
    //ATRIBUTOS
    private int idPaciente;
    private String nombre;
    private String apellido;
    private String sexo;
    private String email;
    private String celular;
    private String telefono;
    private String ocupacion;
    private String direccion;
    private String tipoSangre;
    private String profesion;
    private int id_EPS;
    
    //CONSTRUCTOR
    public Pacientes() {
        
    }
    
    //ENCAPSULAR
    public int getIdPaciente() {
        return idPaciente;
    }

    public void setIdPaciente(int idPaciente) {
        this.idPaciente = idPaciente;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getOcupacion() {
        return ocupacion;
    }

    public void setOcupacion(String ocupacion) {
        this.ocupacion = ocupacion;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTipoSangre() {
        return tipoSangre;
    }

    public void setTipoSangre(String tipoSangre) {
        this.tipoSangre = tipoSangre;
    }

    public String getProfesion() {
        return profesion;
    }

    public void setProfesion(String profesion) {
        this.profesion = profesion;
    }

    public int getId_EPS() {
        return id_EPS;
    }

    public void setId_EPS(int id_EPS) {
        this.id_EPS = id_EPS;
    }
    
    //METODOS
    public void crearPaciente() {
         Conexion objConector = new Conexion(); 
        objConector.conectar();
        
        try {
            
            String sql = "INSERT INTO paciente VALUES(?,?,?,?,?,?,?,?,?,?,?,?);";
            PreparedStatement stmt; 
            stmt = objConector.conn.prepareStatement(sql); 
            stmt.setInt(1, this.idPaciente);
            stmt.setString(2, this.nombre);
            stmt.setString(3, this.apellido);
            stmt.setString(4, this.sexo);
            stmt.setString(5, this.email);
            stmt.setString(6, this.celular);
            stmt.setString(7, this.telefono);
            stmt.setString(8, this.ocupacion);
            stmt.setString(9, this.direccion);
            stmt.setString(10, this.tipoSangre);
            stmt.setString(11, this.profesion);
            stmt.setInt(12, this.id_EPS);
            
            stmt.execute(); 
            
            objConector.desconectar();
        } catch (Exception error) {
            System.out.println("Error Modelo: "+error);
        }
    }
    
    public ResultSet consultarPaciente(){
        Conexion objConector = new Conexion(); 
        objConector.conectar();
        
        try {
            
            String sql = "SELECT * FROM paciente WHERE ID_Paciente = ? ; ";
            PreparedStatement stmt; 
            stmt = objConector.conn.prepareStatement(sql); 
            stmt.setInt(1, this.idPaciente);
            ResultSet consulta = stmt.executeQuery(); 
            objConector.desconectar();
            return consulta; 
            
        } catch (Exception error) {
            System.out.println("Error Modelo: " + error);
        }
 
        return null;
    }
    
    public ResultSet listarPaciente(){
        Conexion objConector = new Conexion(); 
        objConector.conectar();
        
        try {
            
            String sql = "SELECT * FROM paciente; ";
            PreparedStatement stmt; 
            stmt = objConector.conn.prepareStatement(sql); 
            ResultSet consulta = stmt.executeQuery(); 
            objConector.desconectar();
            return consulta; 
            
        } catch (Exception error) {
            System.out.println("Error Modelo: "+error);
        }
 
        return null;
        
    }
    
    public void actualizarPaciente() {
        Conexion objConector = new Conexion(); 
        objConector.conectar();
        
        try {
            
            String sql = "UPDATE paciente SET "+
                         "nombre = ?, "+
                         "apellido = ?, "+
                         "sexo = ?, "+
                         "email = ? "+
                         "celular = ? "+
                         "telefono = ? "+
                         "ocupacion = ? "+
                         "direccion = ? "+
                         "tipo_sangre = ? "+
                         "profesion = ? "+
                         "ID_eps = ? "+
                         "WHERE ID_paciente = ?; "; 
            
            PreparedStatement stmt; 
            stmt = objConector.conn.prepareStatement(sql); 
            stmt.setString(1, this.nombre);
            stmt.setString(2, this.apellido);
            stmt.setString(3, this.sexo);
            stmt.setString(4, this.email);
            stmt.setString(5, this.celular);
            stmt.setString(6, this.telefono);
            stmt.setString(7, this.ocupacion);
            stmt.setString(8, this.direccion);
            stmt.setString(9, this.tipoSangre);
            stmt.setString(10, this.profesion);
            stmt.setInt(11, this.id_EPS);
            stmt.setInt(12, this.idPaciente);
            
            stmt.execute(); 
            
            objConector.desconectar();
        } catch (Exception error) {
            System.out.println("Error Modelo: " + error);
        }
    }
    
    public void eliminarPaciente() {
        
    }
}
