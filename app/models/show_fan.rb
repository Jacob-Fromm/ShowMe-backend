class ShowFan < ApplicationRecord
  belongs_to :fan
  belongs_to :show
end
