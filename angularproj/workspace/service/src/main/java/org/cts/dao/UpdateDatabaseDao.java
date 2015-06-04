package org.cts.dao;

import org.cts.sample.Product;
import org.cts.sample.ProductWrapper;

public interface UpdateDatabaseDao {
	
	public boolean addProducts();
	public boolean createProduct();
	public Product getProduct();
	public ProductWrapper getListOfProducts();
}