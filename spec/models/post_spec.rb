require 'rails_helper'

RSpec.describe Post, type: :model do
  SETTINGS = Settings.model.post
  it { should validate_length_of(:title).is_at_least(SETTINGS.title_min_length).is_at_most(SETTINGS.title_max_length) }
  it { should validate_length_of(:content).is_at_least(SETTINGS.content_min_length).is_at_most(SETTINGS.content_max_length) }
end
