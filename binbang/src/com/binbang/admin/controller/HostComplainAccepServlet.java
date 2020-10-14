package com.binbang.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.binbang.admin.model.service.AdminService;
import com.google.gson.Gson;

/**
 * Servlet implementation class HostComplainAcceptListServlet
 */
@WebServlet( "/admin/hostComplainAccept")
public class HostComplainAccepServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HostComplainAccepServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hostNo=request.getParameter("hostNo");
		System.out.println("호스트번호:"+hostNo);
		String complaintNo=request.getParameter("complaintNo");
		System.out.println("신고 번호:"+complaintNo);
		
		int result=new AdminService().acceptHostComplainCount(hostNo);
		System.out.println(result);
		int result2=new AdminService().acceptHostComplainState(complaintNo);
		System.out.println(result2);
		
		/* String msg=""; 
		String loc="/admin/hostComplainList";*/
		int result3=0;
		
		
		/*
		 * response.setContentType("application/json;charset=utf-8"); new
		 * Gson().toJson(msg,response.getWriter());
		 */
		
		if(result>0 && result2>0) {
			/* msg="신고가 승인되었습니다."; */ 
			result3=3;
		} else {
			/* msg="신고 승인에 실패하였습니다."; */
			result3=0;
		}
		request.setAttribute("result3", result3);
		request.getRequestDispatcher("/admin/hostComplainAcceptEnd").forward(request, response);
		/*
		 * request.setAttribute("msg", msg); request.setAttribute("loc", loc);
		 * request.getRequestDispatcher("/views/common/printMsg.jsp").forward(request,
		 * response);
		 */
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
