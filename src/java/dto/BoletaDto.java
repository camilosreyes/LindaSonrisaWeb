

package dto;

public class BoletaDto{
    
   private int id_boleta; //PK
    private int id_cliente;//FK
    private int id_servicio; //FK
    private String hora_boleta;
    private String fecha_boleta;

    public BoletaDto() {
        
    }

    public int getId_boleta() {
        return id_boleta;
    }

    public void setId_boleta(int id_boleta) {
        this.id_boleta = id_boleta;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public int getId_servicio() {
        return id_servicio;
    }

    public void setId_servicio(int id_servicio) {
        this.id_servicio = id_servicio;
    }

    public String getHora_boleta() {
        return hora_boleta;
    }

    public void setHora_boleta(String hora_boleta) {
        this.hora_boleta = hora_boleta;
    }

    public String getFecha_boleta() {
        return fecha_boleta;
    }

    public void setFecha_boleta(String fecha_boleta) {
        this.fecha_boleta = fecha_boleta;
    }

    @Override
    public String toString() {
        return "BoletaDto{" + "id_boleta=" + id_boleta + ", id_cliente=" + id_cliente + ", id_servicio=" + id_servicio + ", hora_boleta=" + hora_boleta + ", fecha_boleta=" + fecha_boleta + '}';
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 17 * hash + this.id_boleta;
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
        final BoletaDto other = (BoletaDto) obj;
        if (this.id_boleta != other.id_boleta) {
            return false;
        }
        return true;
    }

}
