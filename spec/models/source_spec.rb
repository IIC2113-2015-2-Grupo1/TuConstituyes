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

require 'rails_helper'

RSpec.describe Source, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:url) }
  it { have_and_belong_to_many(:followers) }
  it { have_many(:news_items) }
end
