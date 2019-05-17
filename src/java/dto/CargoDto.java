
package dto;

public class CargoDto {
    private int id_cargo;
    private String desc_cargo;

    public int getId_cargo() {
        return id_cargo;
    }

    public void setId_cargo(int id_cargo) {
        this.id_cargo = id_cargo;
    }

    public String getDesc_cargo() {
        return desc_cargo;
    }

    public void setDesc_cargo(String desc_cargo) {
        this.desc_cargo = desc_cargo;
    }

    @Override
    public String toString() {
        return "CargoDto{" + "id_cargo=" + id_cargo + ", desc_cargo=" + desc_cargo + '}';
    }
    

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 73 * hash + this.id_cargo;
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
        final CargoDto other = (CargoDto) obj;
        if (this.id_cargo != other.id_cargo) {
            return false;
        }
        return true;
    }
    
    
    
    
    
}
