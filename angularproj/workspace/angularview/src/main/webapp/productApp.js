/**
 * 
 */
var myModule=angular.module('productApp',[]);
myModule.controller('productCtrl',function($scope,$http){	
	$scope.deletedItems={"item":[{}]};
	$scope.items={"item":[
	                      {id:'1',productname:'',quantity:''}]};
	$scope.counter=3;
	$scope.addRow=function(){
		 $scope.counter++;
		 $scope.items.item.push({id:$scope.counter,productname:$scope.productname,quantity:$scope.quantity});
	}
	$scope.deleteRow=function(id){
		var index=-1;
		var arr=eval($scope.items.item);
		for(var i=0;i< arr.length;i++){
			if(arr[i].id==id){	
				$scope.deletedItems.item.push({id:arr[i].id,productname:arr[i].productname,quantity:arr[i].quantity})
				index=i;
				break;
			}
		}
		if(index==-1){
			alert('Row cannot be deleted');
		}
		 $scope.items.item.splice(index,1);
	}
	$scope.updateRow=function(){
		if($scope.items.item.length > 0){
			$scope.updateRowInDB();
		}
		if($scope.deletedItems.item.length > 0){
			$scope.deletedItems
		}
		alert("!!!Rows updated sucessfully!!!");
		
	}
	$scope.deleteFromDB=function(){
		var req = {
	   			 method: 'POST',
	   			 url: 'http://localhost:8080/service/json/product/post/deletelist',
	   			 headers: {
	   			   'Content-Type': 'application/json'
	   			 },
	   			 data: $scope.deletedItems
	   			}
	   			$http(req).success(function(data, status, headers, config){$scope.products=data;}
	   			).error(function(data, status, headers, config){alert('Failed '+data)});
	}
	$scope.updateRowInDB=function(){
		var req = {
	   			 method: 'POST',
	   			 url: 'http://localhost:8080/service/json/product/post/updateList',
	   			 headers: {
	   			   'Content-Type': 'application/json'
	   			 },
	   			 data: $scope.items
	   			}
	   			$http(req).success(function(data, status, headers, config){$scope.products=data;}
	   			).error(function(data, status, headers, config){alert('Failed '+data)});
	}
	
	
});