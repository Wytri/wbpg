
package SQL;

import Controlador.Control;
import com.mysql.cj.MysqlConnection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import modelo.Pelicula;


public class Prueba1 {

    public static void main(String[] args) {
        Queue cola = new LinkedList();
        Control obj=new Control();

        //for (Pelicula x: obj.lispe()) {
        //    cola.add(x);
        //}
        
        //for (Iterator<Pelicula> iterator = cola.iterator(); iterator.hasNext();) {
        //    Pelicula next = iterator.next();
        //    System.out.println(next.getNom());
        //}
        SQLConexion.getConexion();
    }
    
}
