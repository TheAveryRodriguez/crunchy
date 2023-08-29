class Studio < ApplicationRecord
  has_many :anime, dependent: :destroy
end
