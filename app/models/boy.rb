class Boy < ApplicationRecord
	has_many :pets,dependent: :destroy
end
