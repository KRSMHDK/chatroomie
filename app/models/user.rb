class User < ApplicationRecord
  has_many :messages
  after_create_commit { broadcast_append_to "users" }
end
