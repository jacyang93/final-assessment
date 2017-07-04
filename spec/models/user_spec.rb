require 'rails_helper'

describe User, 'validations' do
  it { should validate_uniqueness_of(:email) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:name) }
end

RSpec.describe User, type: :model do
  it { should have_secure_password }
end


describe User, "#password_optional?" do
  it "optional passowrd" do
    user = User.new
    user.password_optional?
    expect(user.password_optional?).to eq(true)
  end
end
