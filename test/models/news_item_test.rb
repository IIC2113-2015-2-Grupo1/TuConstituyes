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

require 'test_helper'

class NewsItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
