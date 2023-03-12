package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvidor;

/**
 * Servlet implementation class DeleteServlet
 */
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			
			int noteID = Integer.parseInt(request.getParameter("note_id").trim());
			
			Session s = FactoryProvidor.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			Note note=s.get(Note.class,noteID);
			s.delete(note);
			tx.commit();
			s.close();
			
			response.sendRedirect("all_notes.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}

	

}
