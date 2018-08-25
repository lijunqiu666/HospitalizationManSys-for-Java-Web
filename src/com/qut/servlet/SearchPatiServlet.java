package com.qut.servlet;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.qut.service.PatiInfoService;


/**
 * Servlet implementation class SearchPatiServlet
 */
@WebServlet("/SearchPatiServlet")
public class SearchPatiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchPatiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		Map<String, String[]> params=request.getParameterMap();
		PatiInfoService service=new PatiInfoService();
		List<Map<String,String>> list=
				service.findByParams(params);
		HttpSession session=request.getSession();
		session.setAttribute("pati", list);
		response.sendRedirect("selectpati.jsp");
	
	}

}
