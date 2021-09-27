/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author rober
 */
public class Conexion {
    //ATRIBUTOS
    public Connection conn;
    private String host = "localhost:3306";
    private String database = "consultorioMedicoVirtual";
    private String user = "root";
    private String password = "";
    
    //METODOS
    public void conectar() {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection("jdbc:mysql://"+this.host+"/"+this.database+"?zeroDateTimeBehavior=CONVERT_TO_NULL",this.user,this.password);
            System.out.println("Conexión Existosa!!");
            } catch (Exception error) {
                System.out.println("Error en la Conexión"+error);
        }
    }
    
    public void desconectar() {
        conn = null;
    }
}
