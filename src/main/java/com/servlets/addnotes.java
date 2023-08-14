package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entites.Note;
import com.helper.FactoryProvider;

public class addnotes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public addnotes() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			Note note = new Note(title, content, new Date());
//			System.out.println(note.getId()+"  "+ note.getTitle()+"  "+ note.getContent()+"  "+note.getDate());
			
//			SAVE OBJECT THROUGH HIBERNATE 
			Session s = FactoryProvider.getFactory().openSession();
			Transaction t = s.beginTransaction();
			s.save(note);
			t.commit();
			s.clear();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1 style='text-align:center'>"+"Susscesfully Added"+"</h1>");
			out.println("<h1 style='text-align:center'>"+"<a href='shownotes.jsp'>View all Notes</a>"+"</h1>");
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
	}

}
