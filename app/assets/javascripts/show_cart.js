if(localStorage.getItem("cart") !== null){
  //la url tiene qye ser la url del controlador 
  //EL controlador tiene que mostrar el carrito con el objecto pasad en el nivel
  //orders.
  
  //Si no lo encunetra el dibujado del show.html.erb sera dependiendo del controlador
   //Dibujar una distinta vista que la show, ya que en show se incluye este JS, se estara            redijiendo asi mismo
  //El controlador a encontrar un objecto que se pase, ya sea POST o GET tendra que dibujar una       vista 
  //TL:DR se tendra 2 vistas , uno sin productos y otra con productos
  $.post( "/cart/show",{authenticity_token:"AGG2otysvsVx7HdCUxcZlAHPWu7CfRj2dQCHvi1QXBo=",
           cart: JSON.parse(localStorage["cart"])}, function( data ) {
     console.log(data);
             $("#cart-container").append(data);
});
  
}