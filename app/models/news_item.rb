class NewsItem < ActiveRecord::Base
  has_and_belongs_to_many :tags
  belongs_to :source
  has_many :comments
end
