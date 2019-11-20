package ptithcm.service.impl;

import java.io.File;
import java.util.List;

import ptithcm.dao.CartDao;
import ptithcm.dao.ProductDao;
import ptithcm.dao.UserDao;
import ptithcm.dao.impl.CartDaoImpl;
import ptithcm.dao.impl.ProductDaoImpl;
import ptithcm.dao.impl.UserDaoImpl;
import ptithcm.model.Cart;
import ptithcm.model.Product;
import ptithcm.model.User;
import ptithcm.service.CartService;
import ptithcm.service.ProductService;
import ptithcm.service.UserService;

public class CartServiceImpl implements CartService {
	CartDao cartDao = new CartDaoImpl();

	@Override
	public List<Cart> search(String name) {
		return cartDao.search(name);
	}

	@Override
	public void insert(Cart cart) {
		cartDao.insert(cart);

	}

	@Override
	public List<Cart> getAll() {
		return cartDao.getAll();
	}

	@Override
	public Cart get(int id) {
		return cartDao.get(id);
	}

	@Override
	public void edit(Cart newCart) {
		Cart oldCart = cartDao.get(newCart.getId());

		oldCart.setBuyDate(newCart.getBuyDate());
		oldCart.setBuyer(newCart.getBuyer());
		
		
		cartDao.edit(oldCart);

	}

	@Override
	public void delete(int id) {
		cartDao.delete(id);
	}
}
