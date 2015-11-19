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
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  region_id  :integer
#

class NewsItem < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  validates :url, presence: true

  has_and_belongs_to_many :tags
  belongs_to :source
  has_many :comments

  def self.search(search)
    where("title LIKE ?", "%#{search}")
  end
end
