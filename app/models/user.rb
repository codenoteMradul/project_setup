class User < ApplicationRecord
	validates :name,:password,presence:true
	validate :age_greater_than
	validate :email_format

	after_validation :default_address
	after_validation :age_not_mention
	after_validation :email_not_mention
	before_update :all_in_uppercase

	private
	def age_greater_than
		if age.present? && age < 18
		 errors.add(:age,"is not valid")
    end
  end

  def default_address	
  	if address.blank?
  		self.address = "not mentioned"
  	end
  end

  def all_in_uppercase
  	if name.present?
  		self.name = name.upcase
  	end
  end

  def age_not_mention
  	if age.blank?
  		self.age = "not mentioned"
  	end
  end

  def email_not_mention
  	if email.blank?
  		self.email = "not mentioned"
  	end
  end

  def email_format
  	if email.present? 
  	
  	end

  end

end
