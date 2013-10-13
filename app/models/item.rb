class Item < ActiveRecord::Base
  has_many :photos
  belongs_to :user
  attr_accessible :description, :list_price, :name, :item_type, :user_id
end
