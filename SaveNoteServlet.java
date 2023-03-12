package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvidor;


public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		try {
			
			String topic=request.getParameter("topic");
			String content = request.getParameter("content");
			Note note = new Note(topic,content,new Date());
			
			System.out.println(note.getId());
			//System.out.println(content);
			
			//hibernate:save();
			
			Session session = FactoryProvidor.getFactory().openSession();
			Transaction tx = session.beginTransaction();
			session.save(note);
			tx.commit();
			session.close();
			
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.print("<h1 style ='text-align:center'> note is added successfully !</h1>");
			out.print("<h1 style ='text-align:center'> <a href='all_notes.jsp'>View all notes</a></h1>");
			
		}catch (Exception e) {
			// TODO: handle exception
			
		
		}
		
		
		
	
		
		
	}
	
}
