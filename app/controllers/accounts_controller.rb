class AccountsController < ApplicationController

	def new
		@account = Account.new
	end

	def create
		@account = Account.new(params.require(:account).permit(:username, :password, :first_name, :last_name))
		if @account.save
			redirect_to account_path(@account)
		else
			redirect_to new_account_path
		end
	end
end
