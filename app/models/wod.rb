class Wod < ApplicationRecord
  enum wod_type: {
    amrap: 'amrap',
    emom: 'emom',
    rft: 'rft',
    heavy_day: 'heavy_day',
    ladder: 'ladder'
  }

  validates :wod_type, presence: true
  validates :name, uniqueness: true
end

