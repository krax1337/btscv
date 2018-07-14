class Resume < ApplicationRecord
	belongs_to :user
	validates :firstname, :lastname, :address, presence: true
end
