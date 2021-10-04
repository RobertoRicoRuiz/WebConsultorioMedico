/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;

import static com.sun.media.jfxmediaimpl.MediaUtils.error;
import java.sql.PreparedStatement;

/**
 *
 * @author rober
 */
public class CitasMedicas {
    //ATRIBUTOS
    private int idCitaMedica;
    private String fechaConsulta;
    private String horaConsulta;
    private int idPaciente;
    private int idMedico;
    private String direccion;
    private String piso;
    private String consultorio;
    
    //CONSTRUCTOR
    public CitasMedicas() {
        
    }
    
    //ENCAPSULAR
    public int getIdCitaMedica() {
        return idCitaMedica;
    }

    public void setIdCitaMedica(int idCitaMedica) {
        this.idCitaMedica = idCitaMedica;
    }

    public String getFechaConsulta() {
        return fechaConsulta;
    }

    public void setFechaConsulta(String fechaConsulta) {
        this.fechaConsulta = fechaConsulta;
    }

    public String getHoraConsulta() {
        return horaConsulta;
    }

    public void setHoraConsulta(String horaConsulta) {
        this.horaConsulta = horaConsulta;
    }

    public int getIdPaciente() {
        return idPaciente;
    }

    public void setIdPaciente(int idPaciente) {
        this.idPaciente = idPaciente;
    }

    public int getIdMedico() {
        return idMedico;
    }

    public void setIdMedico(int idMedico) {
        this.idMedico = idMedico;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getPiso() {
        return piso;
    }

    public void setPiso(String piso) {
        this.piso = piso;
    }

    public String getConsultorio() {
        return consultorio;
    }

    public void setConsultorio(String consultorio) {
        this.consultorio = consultorio;
    }
    
     //METODOS
    public void crearCitaMedica(String error) {
       
        Conexion objConector = new Conexion();
        objConector.conectar();
        
        try {
            String sql = "INSERT INTO citas_medicas VALUES(?,?,?,?,?,?,?);";
            PreparedStatement stmt;
            stmt = objConector.conn.prepareStatement(sql);
            stmt.setInt(1, this.idCitaMedica); 
            stmt.setString(2, this.consultorio);
            stmt.setString(3,this.fechaConsulta);
            stmt.setInt(4, this.idPaciente);
            stmt.setInt(5, this.idMedico);
            stmt.setString(6, this.direccion);
            stmt.setString(7, this.piso);
            
            stmt.execute();
            
            objConector.desconectar();
            
        } catch (Exception e) {
            System.out.println("Error Modelo: "+error);
        }
        
        
    }
    
    public void consultarCitaMedica() {
        
    }
    
    public void listarCitaMedica() {
        
    }
    
    public void actualizarCitaMedica() {
        
    }
    
    public void eliminarCitaMedica() {
        
    }

    public void crearCitaMedica() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
