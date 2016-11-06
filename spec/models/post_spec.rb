require 'rails_helper'

RSpec.describe Post, type: :model do
  it { should validate_length_of(:title).is_at_least(20).is_at_most(255) }
  it { should validate_length_of(:content).is_at_least(10).is_at_most(10000) }
end
