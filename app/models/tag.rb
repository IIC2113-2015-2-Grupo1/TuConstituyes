class Tag < ActiveRecord::Base
  has_and_belongs_to_many :news_items
  belongs_to :user
end
