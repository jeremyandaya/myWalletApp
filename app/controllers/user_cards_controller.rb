class UserCardsController < ApplicationController

	def create
		puts "UserCardsController.create() #{params}"
		result = UserCard.create(user_id: params[:user_id], card_id: params[:card_id])
		# user_id = session[:user_id]
		# card_id = params[:card][:id]

		redirect_to user_cards_path

	end

	def index
		@user_cards = UserCard.all
	end

	def destroy
		UserCard.find(params[:id]).destroy
		redirect_to user_cards_path
	end
end
