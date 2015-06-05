<!DOCTYPE html>
<html lang="en-US">
<title>Product manipulation</title>
<body ng-app="productApp">
	<div ng-controller="productCtrl">
		<h2>Item List</h2>
		<table>
			<tr ng-repeat="x in items.item">
				<!-- <td>{{x.id}}</td> -->
				<td><span ><input type="text" ng-model="x.productname"/></span></td>
				<td><input type="text" ng-model="x.quantity"/></td>
				<td><input type="button" id="add" value="+" ng-click="addRow()"></input></td>
				<td><input type="button" id="delete" value="-" ng-click="deleteRow(x.id)"></input></td>
			</tr>
			<tr>
				<td><input type="button" id="update" value="UPDATE LIST" ng-click="updateRow()"/></td>
			</tr>
		</table>
		
	</div>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular-resource.js"></script>
<script src="productApp.js">
</script>
</body>
</html>