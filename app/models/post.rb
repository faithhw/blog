class Post < ApplicationRecord
  validates :title, length: { maximum: 255, minimum: 20 }
  validates :content, length: { maximum: 10000, minimum: 10 }

  paginates_per 10
end
