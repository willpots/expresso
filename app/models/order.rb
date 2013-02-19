class Order < ActiveRecord::Base
  belongs_to :person
  belongs_to :product
  attr_accessible :location, :payment, :person_id, :product_id, :quantity, :allergies
end
