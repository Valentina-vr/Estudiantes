package Service;

/*
<%-- 
    Document   : index
    Author     : Tomas Isaza Montenegro y Valentina Villada Rendon
--%>
 */

public class Libros {
    private String nombre;
    private int isbn;
    private String editorial;
    private String genero;
    private int publicacion;
    private String autor;

    public Libros(String nomb, int isbn,
            String edito, String gen, int pub, String autor) {
        this.nombre = nomb;
        this.isbn = isbn;
        this.editorial = edito;
        this.genero = gen;
        this.publicacion = pub;
        this.autor = autor;
    }

    public String getNombre() {
        return nombre;
    }

    public int getIsbn() {
        return isbn;
    }

    public String getEditorial() {
        return editorial;
    }

    public String getGenero() {
        return genero;
    }
    
    public int getPublicacion() {
        return publicacion;
    }

    public String getAutor() {
        return autor;
    }
}
