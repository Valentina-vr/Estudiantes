package Service;

/*
<%-- 
    Document   : index
    Author     : Tomas Isaza Montenegro y Valentina Villada Rendon
--%>
 */
public class Autor {
    private int cedula;
    private String nombre;
    private String nacionalidad;

    public Autor(int ced, String nomb, String nacio) {
        this.cedula = ced;
        this.nombre = nomb;
        this.nacionalidad = nacio;
    }

    public int getCedula() {
        return cedula;
    }

    public String getNombre() {
        return nombre;
    }

    public String getNacionalidad() {
        return nacionalidad;
    }

}
