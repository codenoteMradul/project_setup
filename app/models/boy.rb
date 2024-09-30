class Boy < ApplicationRecord
	has_one :pets,dependent: :destroy
end
