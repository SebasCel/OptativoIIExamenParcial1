package com.mycompany.examenparcial1netbeans;
import com.Infraestructure.Connections.Conexiones;
import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author PC
 */
public class ExamenParcial1Netbeans {

    public static void main(String[] args) {
        Connection connection = Conexiones.getConnection();
        if (connection == null) {
            System.err.println("No se pudo establecer una conexion.");
        } else {
            try {
                connection.close();
                System.out.println("Conexion hecha.");
            } catch (SQLException e) {
                System.err.println("Error" + e.getMessage());
            }
        }
    }
}
