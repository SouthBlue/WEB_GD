package ptithcm.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import ptithcm.model.Category;
import ptithcm.model.User;
import ptithcm.service.CategoryService;
import ptithcm.service.ProductService;
import ptithcm.service.UserService;
import ptithcm.service.impl.CategoryServiceImpl;
import ptithcm.service.impl.ProductServiceImpl;
import ptithcm.service.impl.UserServiceImpl;

@WebServlet(urlPatterns = { "/admin/product/delete" })
public class ProductDeleteController extends HttpServlet {
	ProductService productService = new ProductServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		productService.delete(Integer.parseInt(id));

		resp.sendRedirect(req.getContextPath() + "/admin/product/list");
	}

}
