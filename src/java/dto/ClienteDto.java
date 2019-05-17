
package dto;

public class ClienteDto {
    
    private int id_cliente; //PK
    private String rut;
    private String nombres; 
    private String apellidos;
    private String fecha_nacimiento;
    private char sexo;
    private String nacionalidad;
    private String celular;
    private int correo_electronico; //FK
    private String direccion;

    public ClienteDto() {
    }
    
    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public char getSexo() {
        return sexo;
    }

    public void setSexo(char sexo) {
        this.sexo = sexo;
    }

    public String getNacionalidad() {
        return nacionalidad;
    }

    public void setNacionalidad(String nacionalidad) {
        this.nacionalidad = nacionalidad;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public int getCorreo_electronico() {
        return correo_electronico;
    }

    public void setCorreo_electronico(int correo_electronico) {
        this.correo_electronico = correo_electronico;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    @Override
    public String toString() {
        return "ClienteDto{" + "id_cliente=" + id_cliente + ", rut=" + rut + ", nombres=" + nombres + ", apellidos=" + apellidos + ", fecha_nacimiento=" + fecha_nacimiento + ", sexo=" + sexo + ", nacionalidad=" + nacionalidad + ", celular=" + celular + ", correo_electronico=" + correo_electronico + ", direccion=" + direccion + '}';
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 71 * hash + this.id_cliente;
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
        final ClienteDto other = (ClienteDto) obj;
        if (this.id_cliente != other.id_cliente) {
            return false;
        }
        return true;
    }  
}
