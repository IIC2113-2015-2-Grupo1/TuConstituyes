class Comment < ActiveRecord::Base
  belongs_to :news_item
end
