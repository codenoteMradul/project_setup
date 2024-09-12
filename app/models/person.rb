class Person < ApplicationRecord
	has_many :mobiles,dependent: :destroy
end
