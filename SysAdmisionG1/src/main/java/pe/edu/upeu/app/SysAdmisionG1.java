/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package pe.edu.upeu.app;

/**
 *
 * @author Data_Science
 */
import pe.edu.upeu.app.gui.GUIMain;
import java.util.prefs.Preferences;
import pe.edu.upeu.app.util.UtilsX;

public class SysAdmisionG1 {

    static Preferences userPrefs = Preferences.userRoot();

    public static void main(String[] args) {
        userPrefs.put("IDIOMAX", new UtilsX().readLanguageFile());
        userPrefs.put("PERFIL", "Admin");
        System.out.println("Hello World!");
        new GUIMain().setVisible(true);
    }
}
