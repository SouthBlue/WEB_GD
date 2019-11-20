package ptithcm.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import ptithcm.model.User;
import ptithcm.service.UserService;
import ptithcm.service.impl.UserServiceImpl;

@WebServlet(urlPatterns = { "/member/myaccount" })
public class MyAccountController extends HttpServlet {
	UserService userService = new UserServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/views/client/account.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = "";
		User user = new User();
		DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
		ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);

		try {
			List<FileItem> items = servletFileUpload.parseRequest(req);
			for (FileItem item : items) {
				if (item.getFieldName().equals("id")) {
					id = item.getString();
					user.setId(Integer.parseInt(item.getString()));
				} else if (item.getFieldName().equals("email")) {
					user.setEmail(item.getString());
				} else if (item.getFieldName().equals("username")) {
					user.setUsername(item.getString());
				} else if (item.getFieldName().equals("password")) {
					user.setPassword(item.getString());
				} else if (item.getFieldName().equals("role")) {
					user.setRoleId(Integer.parseInt(item.getString()));
				} 
				
			}

			userService.edit(user);
			User u = userService.get(Integer.parseInt(id));
			HttpSession session = req.getSession(true);
			 session.setAttribute("account", u);

			resp.sendRedirect(req.getContextPath() + "/member/myaccount");
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			resp.sendRedirect(req.getContextPath() + "/member/myaccount");
		}

	}
}
