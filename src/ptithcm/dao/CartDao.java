package ptithcm.dao;

import java.util.List;

import ptithcm.model.Cart;
import ptithcm.model.Category;

public interface CartDao {
	void insert(Cart cart);

	void edit(Cart cart);

	void delete(int id);

	Cart get(String name);

	Cart get(int id);

	List<Cart> getAll();

	List<Cart> search(String name);
}
