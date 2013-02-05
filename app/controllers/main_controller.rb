class MainController < ApplicationController
  def home

  end

  def validate
  	if params[:email]
  		@customer = Person.find_by_email(params[:email])
  		if @customer
  			session[:email] = params[:email]
  			session[:valid] = true
  		end
  	end
  	redirect_to "/orders/new"
  end

  def order
 	if session[:valid] == true
 		@person = Person.find_by_email session[:email]
	else
		redirect_to "/"
	end
  end
end
