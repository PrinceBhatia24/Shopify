function AddToCart(PID,PName,PPrice){
	let Cart =localStorage.getItem("Cart");
	if(Cart==null){
		let Products=[];
		let Product={ProductId:PID,Productname:PName,Productprice:PPrice,ProductQuantity:1}
		Products.push(Product);
		localStorage.setItem("Cart",JSON.stringify(Products));
		
		showToast("Item is Added To the Cart");
	}else{
		let pcart=JSON.parse(Cart);
		let oldProduct= pcart.find((item)=>item.ProductId==PID)
		if(oldProduct){
			oldProduct.ProductQuantity=oldProduct.ProductQuantity+1
			pcart.map((item)=>{
				if(item.Productid==oldProduct.ProductId){
					item.ProductQuantity=oldProduct.ProductQuantity ;
				}
				
			})
			localStorage.setItem("Cart",JSON.stringify(pcart));
			
			showToast("Product Quantity is increased");
		}else{
				let Product={ProductId:PID,Productname:PName,Productprice:PPrice,ProductQuantity:1}
				pcart.push(Product)
				localStorage.setItem("Cart",JSON.stringify(pcart));
				
				showToast("Product is added to cart");
		}
		UpdateCart();
	}
	
}	


function UpdateCart(){
	let cartString=localStorage.getItem("Cart");
	let Cart=JSON.parse(cartString)
	if(Cart==null|| Cart.length==0){
		console.log("Cart is Empty");
		$(".cart-item").html("( 0 )");
		$(".cart-body").html("<h4>Cart is Empty </h4>");
		$(".checkout-btn").attr('disabled',true);
	}
	else{
		console.log(Cart);
		$(".cart-item").html(`(${Cart.length})`);
		let table=`
		<table class="table table-striped">
		<thead class="bg-primary nav1"> 
		<tr>
		<th scope="col"style="
    padding-right: 195px;
    padding-left: 70px;
">Product Name</th>
		<th scope="col"style="
    padding-right: 32px;
    padding-left: 0px;
">Price</th>
		<th scope="col">Quantity</th>
		<th scope="col">Sub-Total</th>
		<th scope="col"style="
    padding-left: 31px;
">Action</th>
		</tr>
		
		
		
		</thead>
		
		
		
		
		
		`;
		let TotalPrice=0;
		
		Cart.map((item)=>{
			
			
			table+=`
			
			<tr>
			<td>${item.Productname}</td>
			<td>${item.Productprice}</td>
			<td>${item.ProductQuantity}</td>
			<td>${item.Productprice*item.ProductQuantity}</td>
			<td><button onclick='DeleteItem(${item.ProductId})' class="btn btn-danger btn-sm">Remove</button></td>
			
			
			
			
			</tr>
			
			`
			TotalPrice+=item.Productprice*item.ProductQuantity;
			
			
			
		})
		
		table=table+`
		<tr><td colspan='5' class='text-right font-weight-bold'> Total Price is:- ${TotalPrice}</td></tr>
		</table>` 
		 
			$(".cart-body").html(table);
			$(".checkout-btn").attr('disabled',false);
		
		
		
	}
}


function DeleteItem(PID){
	let Cart =JSON.parse(localStorage.getItem('Cart'));
	let NewCart =Cart.filter((item)=>item.ProductId!=PID)
	localStorage.setItem('Cart',JSON.stringify(NewCart))
	UpdateCart();
	showToast("Item is Removed From Cart");
	
}
$(document).ready(function(){
	UpdateCart();
	
	
})


function showToast(content){ 
    $("#toast").addClass("display");
    $("#toast").html(content);
    setTimeout(()=>{
        $("#toast").removeClass("display");
    },2000);
}
function GoToButton(){
	window.location="CheckOut.jsp";
}

