
package Controlador;
import Interfaz.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.*;
import SQL.*;
import java.sql.CallableStatement;

public class Control implements IControl{

    @Override
    public List<Asiento> lisasi() {
        List<Asiento> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Asiento";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Asiento a=new Asiento();
                a.setAsiento(rs.getInt(1));
                a.setSala(rs.getString(2));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis;    
    }
    
    public List<Asiento> lisasibus(String cod) {
        List<Asiento> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select* from Asiento where Sala_id=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setString(1, cod);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Asiento a=new Asiento();
                a.setAsiento(rs.getInt(1));
                a.setSala(rs.getString(2));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis;    
    }

    @Override
    public List<Boleto> lisbole() {
        List<Boleto> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Boleta";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Boleto a=new Boleto();
                a.setCod(rs.getString(1));
                a.setDni(rs.getInt(2));
                a.setIdasiento(rs.getInt(3));
                a.setIdsala(rs.getString(4));
                a.setIdpeli(rs.getString(5));
                a.setFecha(rs.getString(6));
                a.setPago(rs.getDouble(7));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis;   
    }

    @Override
    public List<Cliente> liscli() {
        List<Cliente> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Cliente";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Cliente a=new Cliente();
                a.setDni(rs.getInt(1));
                a.setNombre(rs.getString(2));
                a.setApellido(rs.getString(3));
                a.setEdad(rs.getInt(4));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis; 
    }

    @Override
    public List<Pelicula> lispe() {
        List<Pelicula> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Pelicula";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Pelicula a=new Pelicula();
                a.setIdpeli(rs.getString(1));
                a.setIdcad(rs.getString(2));
                a.setNom(rs.getString(3));
                a.setDuracion(rs.getDouble(4));
                a.setCosto(rs.getDouble(5));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis; 
    }

    @Override
    public List<Sala> lisala() {
        List<Sala> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Sala";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Sala a=new Sala();
                a.setSala(rs.getString(1));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis; 
    }
    
    @Override
    public List<Categoria> liscat() {
        List<Categoria> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Categoria";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Categoria a=new Categoria();
                a.setId(rs.getString(1));
                a.setName(rs.getString(2));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis; 
    }
    
    //buscar especifico
    public List<Pelicula> buspel(String ID) {
       List<Pelicula> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select * from Pelicula where Pelicula_id=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setString(1, ID);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Pelicula a=new Pelicula();
                a.setIdpeli(rs.getString(1));
                a.setIdcad(rs.getString(2));
                a.setNom(rs.getString(3));
                a.setDuracion(rs.getDouble(4));
                a.setCosto(rs.getDouble(5));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis;    
    }
    
    public ArrayList<Pelicula> buscarP(String cod) {
        ArrayList<Pelicula> com = new ArrayList();
             for(Pelicula x: lispe()){
            if(cod.equals(x.getIdpeli())){
                 System.out.println(""+x.getIdpeli()+x.getIdcad()+x.getNom()+x.getCosto()+x.getDuracion());
                 com.add(new Pelicula(x.getIdpeli(),x.getIdcad(), x.getNom(), x.getDuracion(), x.getCosto()));
                 break;
         }
             
    }return com;
    }
    
    public ArrayList<Categoria> buscarCat(String cod) {
        ArrayList<Categoria> com = new ArrayList();
             for(Categoria x: liscat()){
            if(cod.equals(x.getId())){
                 com.add(new Categoria(x.getId(),x.getName()));
                 break;
         }
             
    }return com;
    }
    
    public ArrayList<Cliente> buscarC(int cod) {
        ArrayList<Cliente> com = new ArrayList();
             for(Cliente x: liscli()){
            if(cod==x.getDni()){
                com.add(new Cliente(x.getDni(), x.getNombre(), x.getApellido(), x.getEdad()));
                 break;
         }
             
    }return com;
    }

    @Override
    public void addasi(Asiento a) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call IDAsiento(?,?)}";
            CallableStatement st=cn.prepareCall(sql);
            st.setInt(1, a.getAsiento());
            st.setString(2, a.getSala());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }

     public List<Boleto> codsbole() {
        List<Boleto> lis=new ArrayList();
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="select 'B'+right('00000'+convert(varchar,isnull(Max(right(Boleta_id,4)),0)+1),4) from Boleta";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Boleto a=new Boleto();
                a.setCod(rs.getString(1));
                lis.add(a);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
        return lis; 
    }
    
    @Override
    public void addbol(Boleto b) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call IDBoleta(?,?,?,?,?,?)}";
            CallableStatement st=cn.prepareCall(sql);
            st.setInt(1, b.getDni());
            st.setInt(2, b.getIdasiento());
            st.setString(3, b.getIdsala());
            st.setString(4, b.getIdpeli());
            st.setString(5, b.getFecha());
            st.setDouble(6, b.getPago());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }
    
    public void addbbb(Boleto p) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="insert into Boleta values(?,?,?,?,?,?,?)";
            //CallableStatement st=cn.prepareCall(sql);
            PreparedStatement st=cn.prepareStatement(sql);
            //ResultSet rs=st.executeQuery();
            //while(rs.next()){
            st.setString(1, p.getCod());
            st.setInt(2, p.getDni());
            st.setInt(3, p.getIdasiento());
            st.setString(4, p.getIdsala());
            st.setString(5, p.getIdpeli());
            st.setString(6, p.getFecha());
            st.setDouble(7, p.getPago());
            st.executeUpdate();
               
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }
    
    public void addb(Boleto p) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{insert into Boleta values(?,?,?,?,?,?,?)}";
            //CallableStatement st=cn.prepareCall(sql);
            PreparedStatement st=cn.prepareStatement(sql);
            //ResultSet rs=st.executeQuery();
            st.setString(1, p.getCod());
            st.setInt(2, p.getDni());
            st.setInt(3, p.getIdasiento());
            st.setString(4, p.getIdsala());
            st.setString(5, p.getIdpeli());
            st.setString(6, p.getFecha());
            st.setDouble(7, p.getPago());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }

    @Override
    public void addcli(Cliente c) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call adddCliente(?,?,?,?)}";
            CallableStatement st=cn.prepareCall(sql);
            st.setInt(1, c.getDni());
            st.setString(2, c.getNombre());
            st.setString(3, c.getApellido());
            st.setInt(4, c.getEdad());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }

    @Override
    public void addpeli(Pelicula p) {
//        Connection cn=SQLConexion.getConexion();
//        try{
//            String sql="insert into Pelicula values(?,?,?,?,?)";
//            CallableStatement st=cn.prepareCall(sql);
//            st.setString(1, p.getIdpeli());
//            st.setString(2, p.getIdpeli());
//            st.setString(3, p.getNom());
//            st.setDouble(4, p.getDuracion());
//            st.setDouble(5, p.getCosto());
//            st.executeUpdate();
//        }catch(Exception ex){
//            ex.printStackTrace();
//        }finally{
//          try{ cn.close();}catch(Exception ex2){}
//
//        }
    }
    
    public void addpelic(Pelicula p) {
        Connection cn=SQLConexion.getConexion();
        try{
            String sql="{call IDPelicula(?,?,?,?)}";
            CallableStatement st=cn.prepareCall(sql);
            st.setString(1, p.getIdcad());
            st.setString(2, p.getNom());
            st.setDouble(3, p.getDuracion());
            st.setDouble(4, p.getCosto());
            st.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
          try{ cn.close();}catch(Exception ex2){}

        }
    }

    @Override
    public void addsala(Sala s) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void modasi(Asiento a) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void modbol(Boleto b) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void modcli(Cliente c) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void modpeli(Pelicula p) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void modsala(Sala s) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delasi(String a) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delbol(String b) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delcli(String c) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delpeli(String p) {
//        Connection cn=SQLConexion.getConexion();
//        try{
//            String sql="{call DELPeli(?)}";
//            CallableStatement st=cn.prepareCall(sql);
//            st.setString(1,p);
//            st.executeUpdate();
//            }
//            catch(Exception ex){
//            ex.printStackTrace();
//            }
//            finally{
//            try {
//            cn.close();}
//
//            catch(Exception z){}
//        }
    }

    @Override
    public void delsala(String s) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
           
                
