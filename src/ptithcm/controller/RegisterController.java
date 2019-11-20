package ptithcm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ptithcm.service.UserService;
import ptithcm.service.impl.UserServiceImpl;
import ptithcm.tools.SendMail;
import ptithcm.util.Constant;

@WebServlet(urlPatterns = "/register")
public class RegisterController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession(false);
		if (session != null && session.getAttribute("username") != null) {
			resp.sendRedirect(req.getContextPath() + "/admin");
			return;
		}
		Cookie[] cookies = req.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("username")) {
					session = req.getSession(true);
					session.setAttribute("username", cookie.getValue());
					resp.sendRedirect(req.getContextPath() + "/admin");
					return;
				}
			}
		}

		req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String email = req.getParameter("email");

		UserService service = new UserServiceImpl();
		String alertMsg = "";
		if (service.checkExistUsername(username)) {
			alertMsg = alertMsg + "Tên đăng nhập của bạn đã tồn tại!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
			return;
		}
		if (service.checkExistEmail(email)) {
			alertMsg = alertMsg + "Email của bạn đã tồn tại!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
			return;
		}


		boolean isSuccess = service.register(username, password, email);

		if (isSuccess) {
			SendMail sm= new SendMail();
			sm.sendMail(email, "VN SHop", "Chào mừng bạn đến với VN Shop, hãy đăng nhập để khám phá ngay!");
			req.setAttribute("alert", alertMsg);
			resp.sendRedirect(req.getContextPath() + "/login");
		} else {
			alertMsg = "Lỗi!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
		}
	}

}
