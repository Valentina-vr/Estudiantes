package Service;

/*
<%-- 
    Document   : index
    Author     : Tomas Isaza Montenegro y Valentina Villada Rendon
--%>
 */

import java.io.*;
import java.util.ArrayList;

public class LeeCedula {

    private static int cont = 0;
    private static File archivo;
    private static FileReader fr;
    private static BufferedReader br;
    static ArrayList<Libros> libre = new ArrayList<Libros>();
    static String librery;

    public static String leeCedula(String path, String cedula) {
        try {
            archivo = new File(path);
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea = null;
            String[] tokensLinea = null;
            int ced;
            String name;

            Autor autors;
            linea = br.readLine();
            while (linea != null) {
                tokensLinea = linea.split(",");
                ced = Integer.parseInt(tokensLinea[0]);
                name = tokensLinea[1];
                if (ced == Integer.parseInt(cedula)) {
                    librery = name;
                    linea = null;
                }
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

    public static ArrayList<Libros> leeLibros(String path, String nombre) {
        try {
            System.out.println(nombre);
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
                autor = tokensLinea[5];
                System.out.println(autor);
                if (autor.equals(nombre)) {
                    nomb = tokensLinea[0];
                    isbn = Integer.parseInt(tokensLinea[1]);
                    edito = tokensLinea[2];
                    gen = tokensLinea[3];
                    pub = Integer.parseInt(tokensLinea[4]);
                    System.out.println("si entro");
                    libro = new Libros(nomb, isbn, edito, gen, pub, autor);
                    libre.add(libro);
                    cont++;
                    linea = br.readLine();
                }else
                {
                    cont++;
                    linea = br.readLine();
                }

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
        return libre;
    }

    public static int getCont() {
        return cont;
    }

    public static void clearCont() {
        cont = 0;
    }
}
