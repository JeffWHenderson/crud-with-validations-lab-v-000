class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: true #test passed but I should make this work more as intended
  validates :released, inclusion: { in: [ true, false ] }
  # is invalid when the release year is in the future (FAILED - 16)
  # is invalid without release year when released is true (FAILED - 15)
      # Optional if released is false
      # Must not be blank if released is true
      # Must be less than or equal to the current year
  validates :artist_name, presence: true

end
