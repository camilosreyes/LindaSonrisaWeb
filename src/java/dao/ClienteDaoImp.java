
package dao;

import dto.ClienteDto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import sql.Conexion;


public class ClienteDaoImp implements ClienteDao{

    @Override
    public boolean agregar(ClienteDto dto){
        String query = "INSERT INTO CLIENTE VALUES (?,?,?,?,?,?,?,?,?,?,1)";
        try(PreparedStatement ins = Conexion.getConexion().prepareStatement(query)){
            ins.setInt(1,dto.getId_cliente());
            ins.setString(2,dto.getRut());
            ins.setString(3,dto.getNombres());
            ins.setString(4,dto.getApellidos());
            ins.setString(5, dto.getFecha_nacimiento());
            ins.setObject(6, dto.getSexo());
            ins.setString(7, dto.getNacionalidad());
            ins.setString(8, dto.getCelular());
            ins.setString(9, dto.getCorreo_electronico());
            ins.setString(10, dto.getDireccion());
            if (ins.executeUpdate() > 0){
                return true;
            }
        }catch (Exception e){
            System.out.println("Error al agregar "+e.getMessage());
        }
        return false;
    }
    

    @Override
    public boolean eliminar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<ClienteDto> listar() {
        ArrayList<ClienteDto> lista = new ArrayList<>();
        try{
            Connection conexion = Conexion.getConexion();
            String query = "SELECT * FROM CLIENTE ";
            PreparedStatement buscar = conexion.prepareStatement(query);
            ResultSet rs = buscar.executeQuery(); 
            while(rs.next()){
                ClienteDto cliente = new ClienteDto();
                cliente.setId_cliente(rs.getInt("id_cliente"));
                cliente.setRut(rs.getString("rut"));
                cliente.setNombres(rs.getString("nombres"));
                cliente.setApellidos(rs.getString("apellidos"));
                cliente.setFecha_nacimiento(rs.getString("fecha_nacimiento"));
                cliente.setSexo(rs.getString("sexo").charAt(0));
                cliente.setNacionalidad(rs.getString("nacionalidad"));
                cliente.setCelular(rs.getString("celular"));
                cliente.setCorreo_electronico(rs.getString("correo_electronico"));
                cliente.setDireccion(rs.getString("direccion"));
                cliente.setEstado(rs.getInt("estado"));
                lista.add(cliente);
            }
        } catch (SQLException ex) {
            System.out.println("Error al listar "+ex.getMessage());
        }
        System.out.println(lista);
        return lista;
    }

    @Override
    public boolean modificar(ClienteDto dto) {
         try{
            Connection conexion = Conexion.getConexion();
            String query = "UPDATE CLIENTE SET CELULAR = ? , CORREO_ELECTRONICO = ? , DIRECCION = ? WHERE ID_CLIENTE = ?";
            PreparedStatement modificar = conexion.prepareStatement(query);
            modificar.setString(1, dto.getCelular());
            modificar.setString(2,dto.getCorreo_electronico());
            modificar.setString(3, dto.getDireccion());
            modificar.setInt(4, dto.getId_cliente());
            modificar.execute();
            return true;
        }catch(SQLException w){
            System.out.println("error Sql al editar " + w.getMessage());
        }catch(Exception e){
            System.out.println("Error al editar "+ e.getMessage());
        }
        return false;
    }


    
}
