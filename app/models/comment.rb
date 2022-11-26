class Comment < ApplicationRecord
  belongs_to :post
  has_many :notifications, as: :notificable
end
