class User < ActiveRecord::Base
	has_many :cards, :through => :user_card

	validates :email, presence: true, uniqueness: { message: "Your email is not valid. Please try again." }
	validates :phone, presence: true
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :password, presence: true, length: { minimum: 8 }
	validates :balance, numericality: { greater_than_or_equal_to: 0 }
	validate :email_format_should_contain_at_symbol
	before_save :format_phone_number


	def email_format_should_contain_at_symbol
		if email.match(/@/).nil?
			errors.add(:email_format, "'#{email}' does not contain an @ symbol")
		end
	end

	def format_phone_number
		cleanup = self.phone.gsub(" ", "").gsub(".", "").gsub("-", "")
		self.phone = cleanup
	end


end
