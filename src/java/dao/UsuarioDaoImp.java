package dao;

import dto.UsuarioDto;
import java.sql.Connection;
import sql.Conexion;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UsuarioDaoImp implements UsuarioDao {
    @Override
    public boolean agregar(UsuarioDto dto) {
        String query = "INSERT INTO USUARIO VALUES (?,?,?,?)";
        try(PreparedStatement ins = Conexion.getConexion().prepareStatement(query)){
            ins.setInt(1,dto.getId_usuario());
            ins.setString(2,dto.getUsername());
            ins.setString(3,dto.getPassword());
            ins.setInt(4,dto.getRol());

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
    public ArrayList<UsuarioDto> listar() {
        ArrayList<UsuarioDto> lista = new ArrayList<>();
        try{
            Connection conexion = Conexion.getConexion();
            String query = "SELECT * FROM USUARIO ORDER BY ID_USUARIO";
            PreparedStatement buscar = conexion.prepareStatement(query);
            ResultSet rs = buscar.executeQuery(); 
            while(rs.next()){
                UsuarioDto usuario = new UsuarioDto();
                usuario.setId_usuario(rs.getInt("id_usuario"));
                usuario.setUsername(rs.getString("username"));
                usuario.setRol(rs.getInt("rol"));
                lista.add(usuario);
            }
        } catch (SQLException ex) {
            System.out.println("Error al listar "+ex.getMessage());
        }
        System.out.println(lista);
        return lista;
    }
    

    @Override
    public boolean modificar(UsuarioDto dto) {
        try{
            Connection conexion = Conexion.getConexion();
            String query = "UPDATE USUARIO SET ROL= ? WHERE ID_USUARIO = ?";
            PreparedStatement modificar = conexion.prepareStatement(query);
            modificar.setInt(1, dto.getRol());
            modificar.setInt(2,dto.getId_usuario());
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
