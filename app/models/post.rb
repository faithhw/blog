class Post < ApplicationRecord
  SETTINGS = Settings.model.post

  validates :title, length: { maximum: SETTINGS.title_max_length, minimum: SETTINGS.title_min_length }
  validates :content, length: { maximum: SETTINGS.content_max_length, minimum: SETTINGS.content_min_length }

  paginates_per SETTINGS.per_page
end
