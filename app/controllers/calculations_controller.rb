class CalculationsController < ApplicationController

def flexible_square
  @the_number = params["num"].to_f
  render("calculations/flexible_square.html.erb")
end

def flexible_square_root
  @the_number = params["num"].to_f
  render("calculations/flexible_square_root.html.erb")
end

def flexible_payment
  @rate = params["basispoints"].to_f / 100
  @years = params["years"].to_f
  @principal = params["principal"].to_f

  @monthly_payment = (@principal*@rate/12/100)/ (1 - (1+@rate/12/100)**(-@years*12))
  render("calculations/flexible_payment.html.erb")
end

def flexible_random
  @min = params["min"].to_f
  @max= params["max"].to_f
  @the_number = rand(@min..@max)
  render("calculations/flexible_random.html.erb")
end


def square_form
  render("calculations/square_form.html.erb")
end

def square_results
  @the_number = params["user_number"].to_f
  render("calculations/square_results.html.erb")
end

def square_root_form
  render("calculations/square_root_form.html.erb")
end

def square_root_form_results
  @the_number = params["user_number"].to_f
  render("calculations/square_root_form_results.html.erb")
end

def payment_form
  render("calculations/payment_form.html.erb")
end

def payment_form_results
  @rate = params["apr"].to_f
  @years = params["years"].to_f
  @principal = params["principal"].to_f

  @monthly_payment = (@principal*@rate/12/100)/ (1 - (1+@rate/12/100)**(-@years*12))
  render("calculations/payment_form_results.html.erb")
end


def random_form
  render("calculations/random_form.html.erb")
end

def random_form_results
  @min = params["min"].to_f
  @max= params["max"].to_f
  @the_number = rand(@min..@max)
  render("calculations/random_form_results.html.erb")
end



end
