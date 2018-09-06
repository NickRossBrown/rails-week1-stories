class Chapter < ActiveRecord::Base
  belongs_to :story

  validates :description, :presence => true

end
