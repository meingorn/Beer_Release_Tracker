class SessionsController < ApplicationController

	def new
		@account = Account.new
	end

	def create
		@account = Account.find_by(username: params[:account][:username])
		if @account && @account.authenticate(params [:account][:password])
			session[:account_id] = account.id
			redirect_to account_path(@account)
		else
			flash[:error] = "your username or password is not valid"
			redirect_to signin_path
		end

	end

	private

	def account_params
		params.require(:account).permit(:username, :password, :first_name, :last_name)
	end

end