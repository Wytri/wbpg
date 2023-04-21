package SQL;
import java.sql.*;
public class SQLConexion
 { 
public static Connection getConexion(){ 
Connection con = null;
 try { Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
String url ="jdbc:sqlserver://localhost;database=cine"; 
String usr = "userSQL"; 
String psw = "260403"; 
con = DriverManager.getConnection(url,usr,psw); } 
catch (ClassNotFoundException ex) { System.out.println("No hay Driver!!"); } 
catch (SQLException ex) 
{ System.out.println("Error con la BD"); }
 return con; }
 } 