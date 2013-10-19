class Personne < ActiveRecord::Base
	validates :name, :age, presence: true
end
