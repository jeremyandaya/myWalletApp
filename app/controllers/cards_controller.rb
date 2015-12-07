class CardsController < ApplicationController

	def index
		@cards = Card.all
	end

	def show
		@card = Card.find(params[:id])
		@ownership = UserCard.find_by(user_id: 1, card_id: @card.id)
	end

	def create
	end
end
