/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pe.edu.upeu.app;

/**
 *
 * @author EP-Ing_Sist.-CALIDAD
 */
import javax.swing.*;

public class ToolTipExample {

    public static void main(String[] args) {
        JFrame f = new JFrame("Password Field Example");
        //Creating PasswordField and label  
        JPasswordField value = new JPasswordField();
        value.setBounds(100, 100, 100, 30);
        value.setToolTipText("Enter your Password");
        JLabel l1 = new JLabel("Password:");
        l1.setBounds(20, 100, 80, 30);
        //Adding components to frame  
        f.add(value);
        f.add(l1);
        f.setSize(300, 300);
        f.setLayout(null);
        f.setVisible(true);
    }
}
