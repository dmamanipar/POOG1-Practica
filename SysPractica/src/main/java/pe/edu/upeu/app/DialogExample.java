/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pe.edu.upeu.app;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class DialogExample {

    private static JDialog d;

    DialogExample() {
        JFrame f = new JFrame();
        d = new JDialog(f, "Dialog Example", true);
        d.setLayout(new FlowLayout());
        JButton b = new JButton("OK");
        b.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                DialogExample.d.setVisible(false);
            }
        });
        d.add(new JLabel("Click button to continue."));
        d.add(b);
        d.setSize(300, 300);
        d.setVisible(true);
    }

    public static void main(String args[]) {
        new DialogExample();
    }
}
