/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;

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
    public void crearCitaMedica() {
        Conexion objConector = new Conexion();
        objConector.conectar();
        
        try {
            String sql = "INSERT INTO citas_medicas"
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
    
    
}
