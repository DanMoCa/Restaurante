class CartsController < ApplicationController
  protect_from_forgery 
  def index
  end
  
  def show
    if params[:cart].blank? 
      render "empty"
    else
      @cart = params["cart"]["orders"]
       render partial: "show"
    end
  end
end
