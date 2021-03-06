# == Schema Information
#
# Table name: sources
#
#  id          :integer          not null, primary key
#  name        :string
#  url         :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Source < ActiveRecord::Base
  validates :name, presence: true
  validates :url, presence: true

  has_and_belongs_to_many :followers, class_name: 'User'
  has_many :news_items
end
