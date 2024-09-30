class Man < ApplicationRecord
	has_many :dresses,dependent: :nullify

	scope :name_length, -> {where('LENGTH(name) > ?',	5)}
	scope :all_names, -> {select(:name)}
	scope :find_gender, -> {where(gender:  "female")}
	scope :find_by_name, -> (name){where(name: name)}
	scope :name_start, -> {where('name LIKE  ?', '%l')}
end


get  'profile' to: 'profile#index'
get  'profile_show' to: 'profile#show'
post 'profile_new' to: 'profile#new'
post 'profile_create' to: 'profile#create'
patch 'profile_edit' to: 'profile#edit'
patch 'profile_update' to: 'profile#update'
delete 'profile_destroy' to: 'profile#delete' 