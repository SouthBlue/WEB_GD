package ptithcm.service;

import java.util.List;

import ptithcm.model.Cart;
import ptithcm.model.CartItem;

public interface CartItemService {
	void insert(CartItem cartItem);

	void edit(CartItem cartItem);

	void delete(String id);

	CartItem get(int id);
	
	List<CartItem> getAll();

	List<CartItem> search(String keyword);
}
