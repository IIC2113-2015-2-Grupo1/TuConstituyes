# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  source_id              :integer
#  region_id              :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  gender                 :string
#  rut                    :string
#  provider               :string
#  uid                    :string
#  name                   :string
#

require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  # it { should validate_presence_of(:rut) }

  it 'should factor valid user' do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  # it 'should validate RUT' do
  #   expect(FactoryGirl.build(:user, rut: '12345678-1')).to_not be_valid
  #   expect(FactoryGirl.build(:user, rut: '12449957-7')).to be_valid
  # end
end
