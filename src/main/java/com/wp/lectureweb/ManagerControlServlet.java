package com.wp.lectureweb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/lecture/*")
public class ManagerControlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerControlServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		/* UserDAO user_dao = (UserDAO)getServletContext().getAttribute("user_dao"); */
		UserDAO user_dao = new UserDAO();
		
		// get routing information
		String pathInfo = request.getPathInfo();
		String action = request.getParameter("action");
		
		HttpSession httpSession = request.getSession(false);
		Global g = new Global();
		String viewName = null;

		if(pathInfo != null && pathInfo.length() > 0) { // 메인화면
			if(pathInfo.equals("/main")) {
				UserVO users = new UserVO();
				
				users.setUser_id(request.getParameter("user_id"));
				users.setAdmin(Boolean.parseBoolean(request.getParameter("admin")));
				
				request.setAttribute("users", users);
				
				viewName = "board_main.jsp";
			}
		}
		else {
	
			if(action.equals("register_form")) { // 가입 화면		
				viewName = "addMember.jsp";
			}
			else if(action.equals("register")) { // 계정 추가
				UserVO user = new UserVO();
				user.setUser_id(request.getParameter("user_id"));
				System.out.println(user.getUser_id());
				if(user_dao.selectUser(user.getUser_id()) != null) {
					g.jsmessage(response, "해당 아이디가 이미 존재합니다.");
				}
				else {
					user.setUser_pw(request.getParameter("user_pw"));
					user.setUser_name(request.getParameter("user_name"));
					
					String email = request.getParameter("user_email") + "@" + request.getParameter("user_email_tail");
					
					user.setUser_email(email);
					
					String phone = request.getParameter("user_phone1") + "-" + request.getParameter("user_phone2") + "-" + request.getParameter("user_phone3");
					
					user.setUser_phone(phone);
					
					g.jsmessage(response, "회원가입이 완료되었습니다.");
					
					user_dao.insertUser(user);

					viewName = "redirect:/lecture/main";
				}
	
			}
			else if(action.equals("login_form")) { // 로그인 화면
				viewName = "login.jsp";
			}
			else if(action.equals("login")) { // 로그인 과정
				String user_id = request.getParameter("user_id");
				String user_pw = request.getParameter("user_pw");
				
				UserVO user = user_dao.loginID(user_id, user_pw);
				
				if(user != null) {
					httpSession.setAttribute("user_id", user.getUser_id());
					httpSession.setAttribute("user_pw", user.getUser_pw());
					httpSession.setAttribute("user_name", user.getUser_name());
					httpSession.setAttribute("user_email", user.getUser_email());
					httpSession.setAttribute("user_phone", user.getUser_phone());
					httpSession.setAttribute("admin", user.isAdmin());
					
					viewName = "redirect:/lecture/main";
				}
				else {
					g.jsmessage(response, "아이디/비밀번호가 일치하지 않습니다.");
				}
			}
			else if(action.equals("logout")) {
				
				httpSession.invalidate();
				
				viewName = "redirect:/lecture/main";
			}
			else if(action.equals("user_form")) { // 회원 정보 화면
				
				viewName = "user_info.jsp";
			}
			else if(action.equals("video")) {
				
				String subject = request.getParameter("name");
				
				viewName = "video.jsp?name=" + subject;
			}
			
		}
		
		if (viewName != null) {
			if(viewName.contains("redirect:")) {
				response.sendRedirect(request.getContextPath() + viewName.split(":")[1]);
			}
			else {
				RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/" + viewName);
				view.forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
