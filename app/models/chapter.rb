class Chapter < ActiveRecord::Base
  belongs_to :story
  validates :description, :presence => true



  def random_number
    rand (1..6)
  end


end
