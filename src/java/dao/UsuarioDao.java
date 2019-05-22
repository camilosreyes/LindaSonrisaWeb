
package dao;
import dto.UsuarioDto;
import java.util.ArrayList;



public interface  UsuarioDao {

    public boolean agregar(UsuarioDto dto);
    public boolean eliminar();
    public ArrayList<UsuarioDto> listar();
    public boolean modificar(UsuarioDto dto);
}
