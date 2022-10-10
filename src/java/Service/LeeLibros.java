package Service;

/*
<%-- 
    Document   : index
    Author     : Tomas Isaza Montenegro y Valentina Villada Rendon
--%>
 */

import java.io.*;
import java.util.ArrayList;

public class LeeLibros {
private static int cont = 0;
    private static File archivo;
    private static FileReader fr;
    private static BufferedReader br;
    static ArrayList<Libros> librery = new ArrayList<Libros>();

    public static ArrayList<Libros> leeLibros(String path) {
        try {
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
                nomb = tokensLinea[0];
                isbn = Integer.parseInt(tokensLinea[1]);
                edito = tokensLinea[2];
                gen = tokensLinea[3];
                pub = Integer.parseInt(tokensLinea[4]);
                autor = tokensLinea[5];

                libro = new Libros(nomb, isbn, edito, gen, pub, autor);
                librery.add(libro);
                cont++;
                linea = br.readLine();
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
        return librery;
    }

    public static int getCont() {
        return cont;
    }

    public static void clearCont() {
        cont = 0;
    }    
}
