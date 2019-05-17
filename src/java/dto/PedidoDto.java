
package dto;

import dto.ProveedorDto;
import java.util.Date;

public class PedidoDto{
    private int id;
    private String empleado;
    private String estado;
    private String producto;
    private ProveedorDto proveedor;
    private Date fechaPedido;

    public PedidoDto(){
    
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the empleado
     */
    public EmpleadoDto getEmpleado() {
        return empleado;
    }

    /**
     * @param empleado the empleado to set
     */
    public void setEmpleado(EmpleadoDto empleado) {
        this.empleado = empleado;
    }

    /**
     * @return the estado
     */
    public EstadoDto getEstado() {
        return estado;
    }

    /**
     * @param estado the estado to set
     */
    public void setEstado(EstadoDto estado) {
        this.estado = estado;
    }

    /**
     * @return the producto
     */
    public ProductoDto getProducto() {
        return producto;
    }

    /**
     * @param producto the producto to set
     */
    public void setProducto(ProductoDto producto) {
        this.producto = producto;
    }

    /**
     * @return the proveedor
     */
    public ProveedorDto getProveedor() {
        return proveedor;
    }

    /**
     * @param proveedor the proveedor to set
     */
    public void setProveedor(ProveedorDto proveedor) {
        this.proveedor = proveedor;
    }

    /**
     * @return the fechaPedido
     */
    public Date getFechaPedido() {
        return fechaPedido;
    }

    /**
     * @param fechaPedido the fechaPedido to set
     */
    public void setFechaPedido(Date fechaPedido) {
        this.fechaPedido = fechaPedido;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 59 * hash + this.id;
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
        final PedidoDto other = (PedidoDto) obj;
        if (this.id != other.id) {
            return false;
        }
        return true;
    }
    
    

}