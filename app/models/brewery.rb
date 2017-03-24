class Brewery < ApplicationRecord
	has_many :beers
	has_many :accounts, through: :beers
end
