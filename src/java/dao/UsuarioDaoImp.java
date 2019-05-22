package dao;

import dto.UsuarioDto;
import java.sql.Connection;
import sql.Conexion;

import java.sql.PreparedStatement;
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
            String query = "SELECT  FROM USUARIO";
        }
    }
    

    @Override
    public boolean modificar(UsuarioDto dto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
