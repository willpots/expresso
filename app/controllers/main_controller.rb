class MainController < ApplicationController
  def home

  end

  def validate
  	@email = params[:email]

  	@customer = Customer.where(:email => @email)

  end

  def create
 


  end
end
