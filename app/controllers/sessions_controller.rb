class SessionController < ApplicationController

	def new
		@account = Account.new
	end

	def create
		@account = Account.find_by(username: user_params(:username), password: user_params(:password))
		if @account && @account.authenticate(params)
			session[:account_id]

	end

	private

	def account_params
		params.require(:account).permit(:username, :password, :first_name, :last_name)
	end

end