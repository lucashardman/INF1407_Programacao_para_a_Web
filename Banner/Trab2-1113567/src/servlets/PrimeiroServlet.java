package servlets;

import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.PageContext;


import beans.CountClicks;


@WebServlet("/PrimeiroServlet")
public class PrimeiroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PrimeiroServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int i = 0;
		
		response.setContentType("text/html");
	    
		PageContext pageContext = JspFactory.getDefaultFactory().getPageContext(this, request, response, null, true, 8192, true);
		ServletContext application = pageContext.getServletContext();
		CountClicks banner = (CountClicks) application.getAttribute("bean2");
		
		if(Integer.parseInt(request.getParameter("b")) == 0) {
			i = banner.getQtdDAD();
			i=i+1;
			banner.setQtdDAD(i);
			response.sendRedirect("http://dad.puc-rio.br");
		}
		if(Integer.parseInt(request.getParameter("b")) == 1) {
			i = banner.getQtdDI();
			i=i+1;
			banner.setQtdDI(i);
			response.sendRedirect("http://www.inf.puc-rio.br");
		}
		if(Integer.parseInt(request.getParameter("b")) == 2) {
			i = banner.getQtdJava();
			i=i+1;
			banner.setQtdJava(i);
			response.sendRedirect("http://java.com");
		}
		if(Integer.parseInt(request.getParameter("b")) == 3) {
			i = banner.getQtdPUC();
			i=i+1;
			banner.setQtdPUC(i);
			response.sendRedirect("http://www.puc-rio.br");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
