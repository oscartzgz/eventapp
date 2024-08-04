class User < ApplicationRecord
  include Authenticable

  enum :role, { user: 0, creator: 1 }, default: :user
end
