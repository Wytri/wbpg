
//datos que se insertaran en las tablas
//boleta se creara (iddetalle,dni del cliente,pago,(numero random por ahora))
//cliente se registrara(todos los datos)
//detalle se creara dentro se agregara la funcion,asiento,idorden(crearse como unica)
package modelo;
//para sacar el ultimo codigo +1 select max(IdDetalle)+1 from Detalle
public class RegistroG {
    private int idpelicula;//boleta
    private int iddetalle;//boleta
    private int idfuncion;//detalle 
    private int idasiento;//detalle pero se crea primero en la tabla Asiento ahi mandar tipo asiento con la sala de id que esta en la tabla fnciones
    private int tipoaiento;//guardar en tabla asiento //Vip //EST //REG
    private int idorden;//detalle
    private int total;//0 por ahora se envia a ordenes
    private int dni;
    private String nombre;
    private String apellido;
    private String birth;
    private String correo;
    private String tel;//try

    public RegistroG() {
    }

    public int getIdpelicula() {
        return idpelicula;
    }

    public void setIdpelicula(int idpelicula) {
        this.idpelicula = idpelicula;
    }

    public int getIddetalle() {
        return iddetalle;
    }

    public void setIddetalle(int iddetalle) {
        this.iddetalle = iddetalle;
    }

    public int getIdfuncion() {
        return idfuncion;
    }

    public void setIdfuncion(int idfuncion) {
        this.idfuncion = idfuncion;
    }

    public int getIdasiento() {
        return idasiento;
    }

    public void setIdasiento(int idasiento) {
        this.idasiento = idasiento;
    }

    public int getTipoaiento() {
        return tipoaiento;
    }

    public void setTipoaiento(int tipoaiento) {
        this.tipoaiento = tipoaiento;
    }

    public int getIdorden() {
        return idorden;
    }

    public void setIdorden(int idorden) {
        this.idorden = idorden;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
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

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }
    /*
    drop procedure test

create procedure test(
@idPelicula varchar(10),@idSala varchar(10),@idAsiento varchar(10),@TipoA varchar(10),@idCliente varchar(10), @NOMBRE VARCHAR(25), @APELLIDO VARCHAR(25), @birth varchar(25), @correo varchar(100), @tel varchar(9) 
)as
declare @idFuncion varchar(10)=(select f.IdFuncion from Funciones f where(f.IdPelicula=@idPelicula));
declare @idDetalle varchar(10)=(select (max(IdDetalle)+1) from Detalle);
declare @idOrdenes varchar(10)=(select (max(IdOrden)+1) from Ordenes o);
declare @Total int = 0;
insert into Cliente values(@idCliente,@NOMBRE, @APELLIDO, @birth, @correo, @tel)
insert into Asiento values(@idAsiento,@TipoA,@idSala)
insert into Ordenes	values(@idOrdenes,null,null,@Total)
declare @last varchar(10)=(select (max(IdOrden)) from Ordenes o)
insert into Detalle values(@idDetalle,@idFuncion,@idAsiento,@last)
go

execute test 'P0001','S0001','3','VIP','13','test','apellido','2000-02-02','test@gmail.com','11111111'
select * from Cliente
select * from Asiento
select * from Ordenes
select * from Detalle
select * from Pelicula
    */
    
 
}
