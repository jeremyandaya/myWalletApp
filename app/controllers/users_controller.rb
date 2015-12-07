class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		puts "Calling users#show with #{params[:id]}"
		@user = User.find(params[:id])
	end

	def new
		@user = User.new 
	end

	def create
		result = User.create(user_params)
		if result && !result.id.nil?
			redirect_to user_path result
		else
			flash[:alert] = result.errors.full_messages
			redirect_to "/users/new"
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	private
		def user_params
			params.require(:user).permit(:email, :phone, :first_name, :last_name, :balance, :password)
		end


end







