package hotel;

import java.sql.*;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

public class Employee extends javax.swing.JFrame {
    public Employee() {
        initComponents();
    }

    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        ReturnButton = new javax.swing.JButton();
        EmployeeButton = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        ReturnButton.setBackground(new java.awt.Color(255, 255, 255));
        ReturnButton.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        ReturnButton.setForeground(new java.awt.Color(0, 51, 204));
        ReturnButton.setText("Return");
        ReturnButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ReturnButtonActionPerformed(evt);
            }
        });

        EmployeeButton.setBackground(new java.awt.Color(255, 255, 255));
        EmployeeButton.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        EmployeeButton.setForeground(new java.awt.Color(0, 0, 204));
        EmployeeButton.setText("Get Employee Details");
        EmployeeButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                EmployeeButtonActionPerformed(evt);
            }
        });

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Name", "Contact", "Position", "Salary"
            }
        ));
        jScrollPane1.setViewportView(jTable1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(ReturnButton)
                        .addGap(38, 38, 38)
                        .addComponent(EmployeeButton))
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 375, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(13, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(ReturnButton)
                    .addComponent(EmployeeButton))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 275, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void EmployeeButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_EmployeeButtonActionPerformed
DefaultTableModel model=(DefaultTableModel) jTable1.getModel();
try {
Class.forName("java.sql.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/project","root","");
Statement stmt=con.createStatement();
String query="Select * from employee";           
ResultSet rs=stmt.executeQuery(query);
 while(rs.next())
 {
 String name= rs.getString("Name");
 String contact= rs.getString("Contact");
 String position= rs.getString("Position");
 String salary= rs.getString("Salary");
 model.addRow(new Object[] {name,contact,position,salary});
 }
 stmt.close();
 con.close();     
    }  
  catch(Exception e)
 {
   JOptionPane.showMessageDialog(null,"Connectivity error");
   }          // TODO add your handling code here:
    }//GEN-LAST:event_EmployeeButtonActionPerformed

    private void ReturnButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ReturnButtonActionPerformed
this.setVisible(false);
new MainMenu().setVisible(true);        // TODO add your handling code here:
    }//GEN-LAST:event_ReturnButtonActionPerformed

    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Employee().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton EmployeeButton;
    private javax.swing.JButton ReturnButton;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    // End of variables declaration//GEN-END:variables
}
