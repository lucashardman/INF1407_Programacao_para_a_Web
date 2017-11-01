package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Submit
 */
@WebServlet("/Submit")
public class Submit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Submit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	    response.setContentType("text/html");
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		PrintWriter out = response.getWriter();
		
		Enumeration<String> parameterNames = request.getParameterNames();
		
		int qtdTel = Integer.parseInt(request.getParameter("idQtdTel"));
		String paramName = parameterNames.nextElement();
		
		request.setAttribute("listaTelefonica",paramName);
		
		out.write("<br/>Quantidade de telefones: "+request.getParameter(paramName)+"<br/>");
		
		for(int i=0; i<qtdTel; i++) {
			paramName = parameterNames.nextElement();
			out.write(request.getParameter(paramName)+": ");
			paramName = parameterNames.nextElement();
			out.write(request.getParameter(paramName));
			out.write("<br/>");
		}
		
		request.getRequestDispatcher("listaTelefonica.jsp").forward(request, response);
	}

}
