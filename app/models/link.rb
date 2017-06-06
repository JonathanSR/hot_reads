class Link < ApplicationRecord
  validates :url, :url => true
  validates :url, uniqueness: true

  def self.top10
    order(read: :desc).limit(10)
  end
end
