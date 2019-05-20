package dao;

import dto.UsuarioDto;
import sql.Conexion;

import java.sql.PreparedStatement;

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
}
