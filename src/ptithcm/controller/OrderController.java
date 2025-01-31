package ptithcm.controller;

import java.io.IOException;
import java.security.MessageDigest;
import java.sql.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

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
import ptithcm.tools.SendMail;
import ptithcm.util.RandomUUID;

@WebServlet(urlPatterns = "/member/order")
public class OrderController extends HttpServlet {
	UserService userService = new UserServiceImpl();
	CartService cartService = new CartServiceImpl();
	CartItemService cartItemService = new CartServiceItemImpl();
	long time = System.currentTimeMillis();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
			Object obj = session.getAttribute("account");
			User buyer = (User) obj;
			Cart cart = new Cart();
			if(obj == null) {
				String message = "Bạn chưa đăng nhập, vui lòng đăng nhập để tiếp tục!";
	            req.setAttribute("alert", message);
	            req.getRequestDispatcher("/views/client/list-cart.jsp").forward(req, resp);
	            return;
			}
			cart.setBuyer(buyer);
			cart.setBuyDate(new java.sql.Date(time));
			cart.setId(RandomUUID.getRandomID());
			cartService.insert(cart);
			Object objCart = session.getAttribute("cart");
			if (objCart != null) {
				Map<Integer, CartItem> map = (Map<Integer, CartItem>) objCart;

				for (CartItem cartItem : map.values()) {
					cartItem.setCart(cart);
					cartItem.setId(RandomUUID.getRandomID());
					SendMail sm = new SendMail();
					sm.sendMail(cart.getBuyer().getEmail(), "VN Shop", "Đặt hàng thành công!");
					cartItemService.insert(cartItem);
					
				}

			}
			session.removeAttribute("cart");
			resp.sendRedirect(req.getContextPath() + "/welcome");		

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
