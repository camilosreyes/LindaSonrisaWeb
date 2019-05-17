
package dto;

import dto.PedidoDto;
import java.sql.Time;
import java.util.Date;

public class RecepcionDto{
    private int id;
    private PedidoDto pedido;
    private String empleado;
    private Time hora_recepcion;
    private Date fecha_recepcion;

    public RecepcionDto(){
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public PedidoDto getPedido() {
        return pedido;
    }

    public void setPedido(PedidoDto pedido) {
        this.pedido = pedido;
    }

    public String getEmpleado() {
        return empleado;
    }

    public void setEmpleado(String empleado) {
        this.empleado = empleado;
    }

    public Time getHora_recepcion() {
        return hora_recepcion;
    }

    public void setHora_recepcion(Time hora_recepcion) {
        this.hora_recepcion = hora_recepcion;
    }

    public Date getFecha_recepcion() {
        return fecha_recepcion;
    }

    public void setFecha_recepcion(Date fecha_recepcion) {
        this.fecha_recepcion = fecha_recepcion;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 37 * hash + this.id;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final RecepcionDto other = (RecepcionDto) obj;
        if (this.id != other.id) {
            return false;
        }
        return true;
    }
    
}