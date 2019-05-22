package sql;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {  
    public static Connection getConexion() {
        Connection connection = null;
        try {
           String driverClassName = "oracle.jdbc.driver.OracleDriver";
           String driverUrl="jdbc:oracle:thin:@192.168.10.26:1521:XE";
           Class.forName(driverClassName);
           connection = DriverManager.getConnection(
                   driverUrl, "system","system");
        }catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
}