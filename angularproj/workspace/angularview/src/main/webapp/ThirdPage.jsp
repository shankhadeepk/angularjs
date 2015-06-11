<!DOCTYPE html>
<html lang="en-US">
<title>Product manipulation</title>
<body ng-app="productApp" >
<form name="prodform" novalidate>
	<div ng-controller="productCtrl">
		<h2>Item List</h2>		
		<table>
			<tr ng-repeat="x in items.item">
				<!-- <td>{{x.id}}</td> -->
				<td><input type="text" name="productname" ng-model="x.productname" ng-minlength="1" required/></td>							
				<td><input type="number" name="quantity" ng-model="x.quantity" ng-minlength="1" required/></td>				
				<td><input type="button" id="add" value="+" ng-click="addRow(x)"></input></td>
				<td><input type="button" id="delete" value="-" ng-click="deleteRow(x.id)"></input></td>				
			</tr>	
			<tr>
				<td>
					<p><span class="error" ng-show="prodform.productname.$error.required">Product Name Required</span></p>
					<p><span class="error" ng-show="prodform.productname.$error.text">Number Not allowed</span></p>
				</td>
				<td>
					<p><span class="error" ng-show="prodform.quantity.$error.required">Quantity Required</span></p>
					<p><span class="error" ng-show="prodform.quantity.$error.number">Albhabets Not allowed</span></p>
				</td>
				<td></td>
				<td></td>
			</tr>	
			<tr>
				<td><input type="submit" id="update" value="UPDATE LIST" ng-click="updateRow()"/></td>
			</tr>
		</table>		
	</div>
	<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular-resource.js"></script>
<script src="productApp.js">
</script>
</form>

</body>
</html>