package com.neu.servlet;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.neu.service.PatiInfoService;

/**
 * Servlet implementation class ToUpdatePatiServlet
 */
@WebServlet("/ToUpdatePatiServlet")
public class ToUpdatePatiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ToUpdatePatiServlet() {
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
		Map<String,String> map=service.findById(params);
		HttpSession session=request.getSession();
		session.setAttribute("pati", map);
		response.sendRedirect("updatepati.jsp");
	}

}
