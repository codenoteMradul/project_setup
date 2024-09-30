class Person < ApplicationRecord
	has_many :mobiles,dependent: :destroys
end
