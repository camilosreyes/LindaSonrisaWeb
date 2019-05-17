
package dto;


public class SituacionEconomicaDto {
    
    
    
    private int id_cliente; //FK
    private double promedio_ingresos;//FK
    private String afiliacion_afp; //FK
    private String aseguradora;
    private String nombre_isapre;
    private char tramo_fonasa; 

    public SituacionEconomicaDto() {
        
    }
    
    
    

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public double getPromedio_ingresos() {
        return promedio_ingresos;
    }

    public void setPromedio_ingresos(double promedio_ingresos) {
        this.promedio_ingresos = promedio_ingresos;
    }

    public String getAfiliacion_afp() {
        return afiliacion_afp;
    }

    public void setAfiliacion_afp(String afiliacion_afp) {
        this.afiliacion_afp = afiliacion_afp;
    }

    public String getAseguradora() {
        return aseguradora;
    }

    public void setAseguradora(String aseguradora) {
        this.aseguradora = aseguradora;
    }

    public String getNombre_isapre() {
        return nombre_isapre;
    }

    public void setNombre_isapre(String nombre_isapre) {
        this.nombre_isapre = nombre_isapre;
    }

    public char getTramo_fonasa() {
        return tramo_fonasa;
    }

    public void setTramo_fonasa(char tramo_fonasa) {
        this.tramo_fonasa = tramo_fonasa;
    }

    @Override
    public String toString() {
        return "situacionEconomicaDto{" + "id_cliente=" + id_cliente + ", promedio_ingresos=" + promedio_ingresos + ", afiliacion_afp=" + afiliacion_afp + ", aseguradora=" + aseguradora + ", nombre_isapre=" + nombre_isapre + ", tramo_fonasa=" + tramo_fonasa + '}';
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 29 * hash + this.id_cliente;
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
        final SituacionEconomicaDto other = (SituacionEconomicaDto) obj;
        if (this.id_cliente != other.id_cliente) {
            return false;
        }
        return true;
    }
    
    
    
    
    
    
}
