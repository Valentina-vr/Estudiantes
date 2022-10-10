package Service;

/*
<%-- 
    Document   : index
    Author     : Tomas Isaza Montenegro y Valentina Villada Rendon
--%>
 */
import static Service.LeeAutor.librery;
import java.io.*;
import java.util.ArrayList;

public class GuardaAutor {

    private static int cont = 0;
    private static File archivo;
    private static FileReader fr;
    private static BufferedReader br;
    static ArrayList<Autor> librery = new ArrayList<Autor>();

    public static void add(Autor p, String path) throws IOException {
        File archivo;
        FileWriter fw = null;
        PrintWriter pw = null;
        try {
//archivo = new File(ruta);
            archivo = new File(path);
            fw = new FileWriter(archivo, true);
            pw = new PrintWriter(fw);
            pw.println(p.getCedula() + "," + p.getNombre()
                    + "," + p.getNacionalidad());
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

    public static void delete(int p, String path) throws IOException {
        try {
            librery = new ArrayList<Autor>();
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
                if (ced != p) {
                    nombre = tokensLinea[1];
                    nacio = tokensLinea[2];

                    autors = new Autor(ced, nombre, nacio);
                    librery.add(autors);
                    cont++;
                    linea = br.readLine();
                } else {
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

    public static void ActualizarAutor(Autor p, String path) throws IOException {
        try {
            librery = new ArrayList<Autor>();
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
                if (p.getCedula() == ced) {
                    nombre = p.getNombre();
                    nacio = p.getNacionalidad();

                    autors = new Autor(ced, nombre, nacio);
                    librery.add(autors);
                    cont++;
                    linea = br.readLine();
                } else {
                    ced = Integer.parseInt(tokensLinea[0]);
                    nombre = tokensLinea[1];
                    nacio = tokensLinea[2];

                    autors = new Autor(ced, nombre, nacio);
                    librery.add(autors);
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
}
