class Api::V1::UsersController < ApplicationController
	def index 
		@users = User.all
		render json: @users
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		email = params[:email]
		password = params[:password]
		render izat
		user = User.new(email: email, password: password)
		if @user.save
			render json: user
		else
			render izat
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def user_params
		params.require(:user).permit(:email, :password)
	end
end