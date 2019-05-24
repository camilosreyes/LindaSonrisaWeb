
package dao;

import dto.ClienteDto;
import java.util.ArrayList;

public interface ClienteDao {
    
    public boolean agregar(ClienteDto dto);
    public boolean eliminar();
    public ArrayList<ClienteDto> listar();
    public boolean modificar(ClienteDto dto);
}
