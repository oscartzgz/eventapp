class User < ApplicationRecord
  include Authenticable

  enum :role, { user: 0, organizer: 1 }, default: :user
end
