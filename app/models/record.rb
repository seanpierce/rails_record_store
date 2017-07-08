class Record < ApplicationRecord

  has_many :reviews

  validates :artist, :title, :category, :cost, :presence => true
end
