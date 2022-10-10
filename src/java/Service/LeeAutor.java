package Service;

/*
<%-- 
    Document   : index
    Author     : Tomas Isaza Montenegro y Valentina Villada Rendon
--%>
 */

import java.io.*;
import java.util.ArrayList;

public class LeeAutor {
private static int cont = 0;
    private static File archivo;
    private static FileReader fr;
    private static BufferedReader br;
    static ArrayList<Autor> librery = new ArrayList<Autor>();

    public static ArrayList<Autor> leeAutor(String path) {
        try {
            archivo = new File(path);
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea = null;
            String[] tokensLinea = null;
            int ced;
            String nombre;
            String nacio;

            Autor autors;
            linea = br.readLine();
            while (linea != null) {
                tokensLinea = linea.split(",");
                ced = Integer.parseInt(tokensLinea[0]);
                nombre = tokensLinea[1];
                nacio = tokensLinea[2];

                autors = new Autor(ced, nombre, nacio);
                librery.add(autors);
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
