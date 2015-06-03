<!DOCTYPE html>
<html lang="en-US">
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular-resource.js"></script>
<body ng-app="myApp">
<h2>Item List</h2>
<div ng-controller="myCtrl1">
  <ul>
    <li ng-repeat="x in items.item">
        {{x.productname+" "+x.quantity}}    
    </li>
  </ul>
  <h2>Add Item</h2>
  <p>Product Name : <input type="text" ng-model="productname">
  Quantity : <input type="text" ng-model="quantity"></p>
  <p><input type="button" id="adddetails" value="ADD" ng-click="addNames()"/>
  <input type="button" id="getdata" value="GET DATA" ng-click="getData()"/></p> 
  <p><input type="button" id="update" value="UPDATE" ng-click="updateProduct()"/>   
  <input type="button" id="updateList" value="UPDATE LIST" ng-click="updateProductList()"/></p> 
  <p>Data from service : {{message}}</p>
  <p>Updated products : {{product}}</p>
  <p>Updated product List</p>
  <table>
  	<tr ng-repeat="prod in products.item">
  		<td>{{prod.productname}}</td>
  		<td>{{prod.quantity}}</td>
  	</tr>
  </table>
</div>
<script src="productmanipulatescipt.js">
</script>
</body>
</html> 