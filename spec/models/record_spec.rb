require 'rails_helper'

describe Record do
  # it { should have_many :reviews }
  it { should validate_presence_of :artist }
  it { should validate_presence_of :title }
  it { should validate_presence_of :category }
  it { should validate_presence_of :cost }
end
