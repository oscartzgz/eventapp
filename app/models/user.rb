class User < ApplicationRecord
  include Authenticable

  has_many :events, dependent: :destroy

  enum :role, { user: 0, organizer: 1 }, default: :user
end
