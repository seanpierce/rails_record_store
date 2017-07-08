class Review < ApplicationRecord

  belongs_to :user
  belongs_to :record
  belongs_to :user

  validates :content, :record_id, :user_id, :presence => true
end
