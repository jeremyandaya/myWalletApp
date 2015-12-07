class Card < ActiveRecord::Base
	has_many :users, :through => :user_card
	# validates :number, presence: true, uniqueness: true, length: { in: 15..16 }
	# validates :expMonth, presence: true
	# validates :expYear, numericality: { greater_than_or_equal_to: Time.now.year }
	
	# before_save :get_credit_card_type

	def get_credit_card_type
		if number.starts_with?("4")
			self.card_type = "Visa"
		elsif number.starts_with?("55")
			self.card_type = "Mastercard"
		elsif number.starts_with?("34") || number.starts_with?("37")
			self.card_type = "American Express"
		else
			self.card_type = "Other"
		end
	end
end
