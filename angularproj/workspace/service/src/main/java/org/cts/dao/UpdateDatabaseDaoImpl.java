package org.cts.dao;

import org.bson.Document;
import org.cts.sample.Product;
import org.cts.sample.ProductWrapper;
import org.cts.utility.MongoDbConnection;

import com.mongodb.BasicDBObject;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

public class UpdateDatabaseDaoImpl implements UpdateDatabaseDao{

	public boolean addProducts(ProductWrapper prodWrapper) {
		MongoDatabase mDb=MongoDbConnection.getConnection("my_test");		
		MongoCollection<Document> coll = mDb.getCollection("Product");
		
		try{
			for(Product prod:prodWrapper.getListOfProducts())
			{
				Document mongoDoc=new Document();
				mongoDoc.append("productname",prod.getProductname()).append("quantity", prod.getQuantity());			
				coll.insertOne(mongoDoc);		
			}
			return true;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return false;
	}

	public boolean createProduct() {
		// TODO Auto-generated method stub
		return false;
	}

	public Product getProduct() {
		// TODO Auto-generated method stub
		return null;
	}

	public ProductWrapper getListOfProducts() {
		// TODO Auto-generated method stub
		return null;
	}
	

}
