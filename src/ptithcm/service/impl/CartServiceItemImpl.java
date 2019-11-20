package ptithcm.service.impl;

import java.util.List;

import ptithcm.dao.CartItemDao;
import ptithcm.dao.impl.CartItemDaoImpl;
import ptithcm.model.CartItem;
import ptithcm.service.CartItemService;

public class CartServiceItemImpl implements CartItemService {
	CartItemDao cartItemDao = new CartItemDaoImpl();

	@Override
	public void insert(CartItem cartItem) {
		cartItemDao.insert(cartItem);
		
	}

	@Override
	public void edit(CartItem newCartItem) {
		CartItem oldCartItem = cartItemDao.get(newCartItem.getId());
		oldCartItem.setCart(newCartItem.getCart());
		oldCartItem.setProduct(newCartItem.getProduct());
		oldCartItem.setQuantity(newCartItem.getQuantity());
		oldCartItem.setUnitPrice(newCartItem.getUnitPrice());
		
		cartItemDao.edit(oldCartItem);
	}

	@Override
	public void delete(String id) {
		cartItemDao.delete(id);
	}

	@Override
	public CartItem get(int id) {
		return cartItemDao.get(id);
	}

	@Override
	public List<CartItem> getAll() {
		return cartItemDao.getAll();
	}

	@Override
	public List<CartItem> search(String keyword) {
		return cartItemDao.search(keyword);
	}

	
}
