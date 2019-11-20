package ptithcm.controller.admin;

import java.io.IOException;
import java.sql.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ptithcm.model.Cart;
import ptithcm.model.User;
import ptithcm.model.CartItem;
import ptithcm.service.CartItemService;
import ptithcm.service.CartService;
import ptithcm.service.UserService;
import ptithcm.service.impl.CartServiceImpl;
import ptithcm.service.impl.CartServiceItemImpl;
import ptithcm.service.impl.UserServiceImpl;
@WebServlet(urlPatterns= {"/admin/order/list"})
public class OrderListController extends HttpServlet {
	CartItemService cartItemService=new CartServiceItemImpl();
	CartService cartService=new CartServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	List<CartItem> listCartItem =cartItemService.getAll();
	req.setAttribute("listCartItem", listCartItem);
	RequestDispatcher dispatcher = req.getRequestDispatcher("/views/admin/list-order.jsp");
	dispatcher.forward(req, resp);
	}
	
}
