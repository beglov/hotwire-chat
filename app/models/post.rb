class Post < ApplicationRecord
  validates :username, length: { minimum: 1, maximum: 20 }
  validates :body, length: { minimum: 1, maximum: 280 }
end
