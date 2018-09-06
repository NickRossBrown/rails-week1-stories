class Story < ActiveRecord::Base
  has_many :chapters
  validates :title, :presence => true

  scope :five_most_recent, -> { order(created_at: :desc).limit(10)}

  scope :most_chapters, -> {(
    select("stories.title, stories.description, count(chapters.id) as chapters_count")
    .joins(:chapters)
    .group("stories.id")
    .order("chapters_count DESC")
    .limit(10)
    )}

  # scope :less_than_five_chapters, -> {(
  #   select("stories.title, stories.description, count(chapters.id) as chapters_count")
  #   .joins(:chapters)
  #   .group("stories.id")
  #   .where("chapters_count" < '5')
  #   .limit(3)
  #   )}

end
