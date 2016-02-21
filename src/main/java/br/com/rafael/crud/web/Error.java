package br.com.rafael.crud.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/error")
public class Error extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			
		// Analyze the servlet exception
		// Analisar a exceção servlet
		Exception exception = (Exception) req.getAttribute("javax.servlet.error.exception");
		Integer statusCode = (Integer) req.getAttribute("javax.servlet.error.status_code");
		String servletName = (String) req.getAttribute("javax.servlet.error.servlet_name");
		String requestUri = (String) req.getAttribute("javax.servlet.error.request_uri");
		
		req.setAttribute("exception", exception);
		req.setAttribute("statusCode", statusCode);
		req.setAttribute("servletName", servletName);
		req.setAttribute("requestUri", requestUri);

		RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/views/error/error.jsp");
		dispatcher.forward(req, resp);

	}
}
