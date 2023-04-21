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

public class FirstSwingExample {

    public static void main(String[] args) {
        JFrame f = new JFrame();//creating instance of JFrame  

        JButton b = new JButton("click");//creating instance of JButton  
        b.setBounds(20, 100, 100, 40);//x axis, y axis, width, height  
        f.setTitle("My Primer Ejemplo");
        f.add(b);//adding button in JFrame  

        f.setSize(500, 500);//400 width and 500 height  
        f.setLayout(null);//using no layout managers  
        f.setVisible(true);//making the frame visible  
    }
}
