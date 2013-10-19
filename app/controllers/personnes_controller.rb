class PersonnesController < ApplicationController
	before_filter :toto

	def toto 
		@titi = 'tata'
	end

	def new
		 @personne = Personne.new
	end

	def create
		@personne = Personne.new(person_params)
		if @personne.save
			redirect_to @personne
    else
      render :new
    end
	end

	def show
		@personne = Personne.find(params[:id])
	end

	def index
		@personnes = Personne.all
	end

	def destroy
		#@personne = Personne.delete
		@personne = Personne.find(params[:id])
    	@personne.delete
	end

	private
    
    def person_params
      params.require(:personne).permit(:name, :age)
    end
end
