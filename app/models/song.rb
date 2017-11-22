class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: true #test passed but I should make this work more as intended
  validates :released, inclusion: { in: [ true, false ] }
end
