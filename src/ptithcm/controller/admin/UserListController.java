package ptithcm.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;

import ptithcm.model.User;
import ptithcm.service.UserService;
import ptithcm.service.impl.UserServiceImpl;
import sun.misc.Contended;
@WebServlet(urlPatterns= {"/admin/user/list"})
public class UserListController extends HttpServlet {
	UserService userService = new UserServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<User> userList = userService.getAll();
		req.setAttribute("userList", userList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/views/admin/list-user.jsp");
		dispatcher.forward(req, resp);
	}
	
}
