package Service;

/*
<%-- 
    Document   : index
    Author     : Tomas Isaza Montenegro y Valentina Villada Rendon
--%>
 */
import static Service.GuardaAutor.add;
import static Service.GuardaAutor.librery;
import java.io.*;
import java.util.ArrayList;

public class GuardaLibro {

    private static int cont = 0;
    private static File archivo;
    private static File archivoA;
    private static FileReader fr;
    private static BufferedReader br;
    static ArrayList<Libros> librery = new ArrayList<Libros>();

    public static void add(Libros p, String path) throws IOException {
        File archivo;
        FileWriter fw = null;
        PrintWriter pw = null;
        try {
//archivo = new File(ruta);
            archivo = new File(path);
            fw = new FileWriter(archivo, true);
            pw = new PrintWriter(fw);
            pw.println(p.getNombre() + "," + p.getIsbn()
                    + "," + p.getEditorial() + "," + p.getGenero() + "," + p.getPublicacion() + "," + p.getAutor());
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pw != null) {
                    pw.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
    
    public static void ActualizarLibro(Libros p, String path) throws IOException {
        try {
            librery = new ArrayList<Libros>();
            archivo = new File(path);
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea = null;
            String[] tokensLinea = null;
            String nomb;
            int isbn;
            String edito;
            String gen;
            int pub;
            String autor;

            Libros libro;
            linea = br.readLine();
            while (linea != null) {
                tokensLinea = linea.split(",");
                isbn = Integer.parseInt(tokensLinea[1]);
                if (p.getIsbn()== isbn) {
                    nomb = p.getNombre();
                    edito = p.getEditorial();
                    gen = p.getGenero();
                    pub = p.getPublicacion();
                    autor = p.getAutor();

                    libro = new Libros(nomb, isbn, edito, gen, pub, autor);
                    librery.add(libro);
                    cont++;
                    linea = br.readLine();
                } else {
                    isbn = Integer.parseInt(tokensLinea[1]);
                    nomb = tokensLinea[0];
                    edito = tokensLinea[2];
                    gen = tokensLinea[3];
                    pub = Integer.parseInt(tokensLinea[4]);
                    autor = tokensLinea[5];

                    libro = new Libros(nomb, isbn, edito, gen, pub, autor);
                    librery.add(libro);
                    cont++;
                    linea = br.readLine();
                }

            }
            BufferedWriter bw = new BufferedWriter(new FileWriter(path));
            bw.write("");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (null != fr) {
                    fr.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        for (int i = 0; i < librery.size(); i++) {
            add(librery.get(i), path);
        }
    }

    public static void delete(int p, String path) throws IOException {
        try {
            librery = new ArrayList<Libros>();
            archivoA = new File(path);
            fr = new FileReader(archivoA);
            br = new BufferedReader(fr);
            String linea = null;
            String[] tokensLinea = null;
            String nomb;
            int isbn;
            String edito;
            String gen;
            int pub;
            String autor;
            Libros libro;

            linea = br.readLine();
            while (linea != null) {
                tokensLinea = linea.split(",");
                isbn = Integer.parseInt(tokensLinea[1]);
                if (isbn != p) {
                    tokensLinea = linea.split(",");
                    nomb = tokensLinea[0];
                    edito = tokensLinea[2];
                    gen = tokensLinea[3];
                    pub = Integer.parseInt(tokensLinea[4]);
                    autor = tokensLinea[5];

                    libro = new Libros(nomb, isbn, edito, gen, pub, autor);
                    librery.add(libro);
                    cont++;
                    linea = br.readLine();
                } else {
                    cont++;
                    linea = br.readLine();
                }

            }
            BufferedWriter bw = new BufferedWriter(new FileWriter(archivoA));
            bw.write("");
            for (int i = 0; i < librery.size(); i++) { 
                add(librery.get(i), path);
            }
            

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (null != fr) {
                    fr.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

    }
}
