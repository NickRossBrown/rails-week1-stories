class Story < ActiveRecord::Base
  has_many :chapters
  validates :title, :presence => true

  scope :five_most_recent, -> { order(created_at: :desc).limit(10)}

end
