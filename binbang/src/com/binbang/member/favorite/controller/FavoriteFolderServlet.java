package com.binbang.member.favorite.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.binbang.house.model.service.HouseService;
import com.binbang.house.model.vo.House;
import com.binbang.member.model.service.FavoriteService;
import com.binbang.member.model.vo.Favorite;

/**
 * Servlet implementation class MemberFavoriteFolderServlet
 */
@WebServlet("/member/favoriteFolder")
public class FavoriteFolderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FavoriteFolderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		List<House> house = new HouseService().selectPictures();
		for (House h : house) {
			h.setHousePicture(new HouseService().selectMainPicture(h));
		}
		
		
		Favorite f = new FavoriteService().viewFolder(memberNo);					
		String memberNo = request.getParameter("member_no");
		
		request.setAttribute("favorite", f);
		request.getRequestDispatcher("/views/member/favoriteFolder.jsp").forward(request, response);
	

	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
