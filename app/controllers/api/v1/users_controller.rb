class Api::V1::UsersController < ApplicationController
	def index 
		@users = User.all
		render json: @users
	end

	def show
		@user = User.find_by_email(params[:email])
		if @user && @user.authenticate(params[:password])
			render json: @user
		else
			render json: {"Error": "Invalid username or password"}
		end
	end

	def create
		@user = User.new(email: params[:email], password: params[:password])
		if @user.save
			render json: @user
		else
			render json: { errors: @user.errors.full_messages }, status: :errors	
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
