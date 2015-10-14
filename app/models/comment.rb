# == Schema Information
#
# Table name: comments
#
#  id           :integer          not null, primary key
#  content      :text
#  starred      :boolean
#  news_item_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Comment < ActiveRecord::Base
  belongs_to :news_item
end
