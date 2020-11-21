class ComedianFan < ApplicationRecord
  belongs_to :fan
  belongs_to :comedian
end
