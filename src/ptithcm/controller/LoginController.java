package ptithcm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ptithcm.model.User;
import ptithcm.service.UserService;
import ptithcm.service.impl.UserServiceImpl;
import ptithcm.util.Constant;

@WebServlet(urlPatterns = "/login")
public class LoginController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession(false);
		if (session != null && session.getAttribute("account") != null) {
			resp.sendRedirect(req.getContextPath()+ "/waiting");
			return;
		}
		Cookie[] cookies = req.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("username")) {
					session = req.getSession(true);
					session.setAttribute("username", cookie.getValue());
					resp.sendRedirect(req.getContextPath()+ "/waiting");
					return;
				}
			}
		}

		req.getRequestDispatcher("/views/client/login.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  	String username = req.getParameter("username");
	        
	        String password = req.getParameter("password");
	        
	        String alertMsg="";
	        
	        if(username == "" || password == ""){
	            alertMsg = "Tài khoản hoặc mật khẩu trống!";
	            req.setAttribute("alert", alertMsg);
	            req.getRequestDispatcher("/views/client/login.jsp").forward(req, resp);
	            return;
	        }
	      
	        UserService service = new UserServiceImpl();
	        
	        User user = service.login(username, password);
	        
	        
	        if(user!=null){
	            HttpSession session = req.getSession(true);
	            session.setAttribute("account", user);

	           
	            resp.sendRedirect(req.getContextPath()+"/waiting");
	        }else{
	            alertMsg = "Tên đăng nhập hoặc mật khẩu không đúng!";
	            req.setAttribute("alert", alertMsg);
	            req.getRequestDispatcher("/views/client/login.jsp").forward(req, resp);
	        }
	    }

	}


