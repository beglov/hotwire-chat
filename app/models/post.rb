class Post < ApplicationRecord
  validates :username, length: { minimum: 1, maximum: 20 }
  validates :body, length: { minimum: 1, maximum: 280 }

  after_create_commit -> { broadcast_prepend_to 'posts' }
  after_update_commit -> { broadcast_replace_to 'posts' }
  after_destroy_commit -> { broadcast_remove_to 'posts' }
end
