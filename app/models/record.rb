class Record < ApplicationRecord
  validates :artist, :title, :category, :cost, :presence => true
end
