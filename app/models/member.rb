class Member < ActiveRecord::Base
	has_many :evaluations
	validates :name, :presence => true
end
