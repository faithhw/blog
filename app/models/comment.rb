class Comment < ApplicationRecord
  SETTINGS = Settings.model.comment
  belongs_to :post

  validates :content, length: { maximum: SETTINGS.content_max_length, minimum: SETTINGS.content_min_length }

  paginates_per SETTINGS.per_page
end
