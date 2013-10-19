class FooController < ApplicationController
  def index
   
  end
  
  def print_hello
    @toto = Personne.first
    render "hello"

  end 
end
