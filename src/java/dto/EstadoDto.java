
package dto;


public class EstadoDto {
    
    private int id_estado;
    private String desc_estado;

    public EstadoDto() {
    }
    

    public int getId_estado() {
        return id_estado;
    }

    public void setId_estado(int id_estado) {
        this.id_estado = id_estado;
    }

    public String getDesc_estado() {
        return desc_estado;
    }

    public void setDesc_estado(String desc_estado) {
        this.desc_estado = desc_estado;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 29 * hash + this.id_estado;
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
        final EstadoDto other = (EstadoDto) obj;
        if (this.id_estado != other.id_estado) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "EstadoDto{" + "id_estado=" + id_estado + ", desc_estado=" + desc_estado + '}';
    }
    
    
    
    
}
