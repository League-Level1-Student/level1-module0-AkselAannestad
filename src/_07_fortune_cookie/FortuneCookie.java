package _07_fortune_cookie;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Random;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class FortuneCookie implements ActionListener {
	
public void showButton() { 
    JFrame frame =new JFrame();
	frame.setVisible(true);
     
	 JButton button = new JButton("Open your fortune");
	    frame.add(button);
	    frame.pack();
	    button.addActionListener(this);
	  
        
     }

@Override
public void actionPerformed(ActionEvent e) {
	  int rand = new Random().nextInt(5);
	  if(rand==0) {
		  JOptionPane.showMessageDialog(null, "You will live a long and properous life as a uber driver");
	  }
	  else if(rand==1) {
		  JOptionPane.showMessageDialog(null, "You will spend too much time gaming");
	  }
	  else if(rand==2) {
		  JOptionPane.showMessageDialog(null, "Something is coming");
	  }
	  else if(rand==3) {
		  JOptionPane.showMessageDialog(null, "You will have a big surprise");
	  }
	  else if(rand==4) {
		  JOptionPane.showMessageDialog(null, "If you don't change your path, you will end up where you're headed");
	  }
}
}
