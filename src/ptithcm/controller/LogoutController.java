package ptithcm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ptithcm.util.Constant;
@WebServlet(urlPatterns="/logout")
public class LogoutController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 HttpSession session = req.getSession();
	        
	        session.removeAttribute("account");
	        
	        Cookie[] cookies = req.getCookies();
	        
	        if(cookies!=null){
	            for (Cookie cookie : cookies) {
	                if(Constant.COOKIE_REMEMBER.equals(cookie.getName())){
	                    cookie.setMaxAge(0); 
	                    resp.addCookie(cookie);
	                    break;
	                }
	            }
	        }
	        
	       resp.sendRedirect("./login");
	}

}
