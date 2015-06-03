package org.cts.sample;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@Path("/json/product")
public class MovieController {
	
	@GET
	@Path("/get")
	@Consumes(MediaType.APPLICATION_JSON)
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	@Produces("text/plain")
	public String getProduct(Product prod)
	{
		return "Good Product";
	}
	
	@POST
	@Path("/post/list")
	@Consumes(MediaType.APPLICATION_JSON)	
	@Produces(MediaType.APPLICATION_JSON)
	//@Produces("text/plain")
	public ProductWrapper updateProductList(ProductWrapper prodWrapper)
	{
		System.out.println("Update Product");
		List<Product> prodList=prodWrapper.getListOfProducts();
		Product prod=new Product("Grapes", 250);
		prodList.add(prod);
		prod=new Product("Apples",100);
		prodList.add(prod);
		ProductWrapper prodWrap=new ProductWrapper();
		prodWrap.setListOfProducts(prodList);
		return prodWrap;
	}
	@POST
	@Path("/post/product")
	@Consumes(MediaType.APPLICATION_JSON)	
	@Produces(MediaType.APPLICATION_JSON)
	//@Produces("text/plain")
	public String updateProduct(Product product)
	{
		System.out.println(product);
		return "";
	}
	

}
