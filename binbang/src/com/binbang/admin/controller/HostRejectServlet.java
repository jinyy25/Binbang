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
 * Servlet implementation class HostRejectServlet
 */
@WebServlet("/admin/hostReject")
public class HostRejectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HostRejectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memberNo = request.getParameter("memberNo");
		String hostReject="";
		int result=new AdminService().deleteHost(memberNo);
		if(result>0) {
			hostReject="호스트 승인 거절이 완료되었습니다.";
		}else {
			hostReject="호스트 승인 거절에 실패하였습니다.";
		}
		
		response.setContentType("application/json;charset=utf-8");
		new Gson().toJson(hostReject,response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
