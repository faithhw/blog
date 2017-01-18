class Comment < Sequel::Model
  SETTINGS = Settings.model.comment

  many_to_one :post
  many_to_one :user

  # validates :content, length: { maximum: SETTINGS.content_max_length, minimum: SETTINGS.content_min_length }

  # paginates_per SETTINGS.per_page
end
