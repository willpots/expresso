class MainController < ApplicationController
  def home
    if session[:valid] == true
      redirect_to "/orders/new"
    end
  end

  def validate
    if params[:email]
      @customer = Person.find_by_email(params[:email])
      if @customer
        session[:email] = params[:email]
        session[:valid] = true
        redirect_to "/orders/new"
      else

      end
    end
  end

  def order
    if session[:valid] == true
      @person = Person.find_by_email session[:email]
    else
      redirect_to "/"
    end
  end

  def admin

  end
end
