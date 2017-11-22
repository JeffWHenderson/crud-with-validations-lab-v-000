class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: true #test passed but I should make this work more as intended
  validates :released, inclusion: { in: [ true, false ] }
  # validates :release_year, # if is_released?
      # Optional if released is false
      # Must not be blank if released is true
      # Must be less than or equal to the current year
  validates :artist_name, presence: true

end
