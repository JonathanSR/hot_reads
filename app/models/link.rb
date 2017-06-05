class Link < ApplicationRecord
  validates :url, :url => true

  def self.top10
    order(read: :desc).limit(10)
  end
end
