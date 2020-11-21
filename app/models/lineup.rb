class Lineup < ApplicationRecord
  belongs_to :comedian
  belongs_to :sshow
end
