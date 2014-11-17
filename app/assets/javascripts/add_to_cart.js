/**
* El objecto es el Producto serializado a JSON
*  json ejemplo {"name":"pizza","price":"25"}
*
*/
addToCart = function(object){
   if(localStorage.getItem("cart") === null){
     var cart = {};
     cart.orders = [];
     cart.orders.push(object);
     localStorage["cart"] = JSON.stringify(cart);
   }else{
     var cart  = JSON.parse(localStorage["cart"]);
     cart.orders.push(object);
     localStorage["cart"] = JSON.stringify(cart);
   }
};

showCart = function(){
   if(localStorage.getItem("cart") === null){
      //Carrito vacio
   }else{
     
   }
};