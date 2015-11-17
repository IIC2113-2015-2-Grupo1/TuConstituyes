# == Schema Information
#
# Table name: tags
#
#  id           :integer          not null, primary key
#  tag_name     :string
#  user_id      :integer
#  news_item_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Tag < ActiveRecord::Base
  validates :tag_name, presence: true

  has_and_belongs_to_many :news_items
  belongs_to :creator, class_name: 'User'
end
