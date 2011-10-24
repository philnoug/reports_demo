class Product < ActiveRecord::Base

	validates_presence_of :code, :name, :price

end
