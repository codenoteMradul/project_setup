class Course < ApplicationRecord
	has_many :enrollment
	has_many :students,through: :enrollment
end
