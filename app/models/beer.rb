class Beer < ApplicationRecord
	belongs_to :account
	belongs_to :brewery
end
