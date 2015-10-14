# == Schema Information
#
# Table name: news_items
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  image      :string
#  url        :string
#  source_id  :integer
#  tag_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class NewsItem < ActiveRecord::Base
  has_and_belongs_to_many :tags
  belongs_to :source
  has_many :comments
end
