class Pizza < ActiveRecord::Base
	validates_presence_of :name, :description, :price, :photo
	validates_uniqueness_of :name
end
