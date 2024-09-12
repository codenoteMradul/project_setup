class Man < ApplicationRecord
	has_many :dresses,dependent: :nullify
end
