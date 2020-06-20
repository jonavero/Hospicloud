class Entry < ApplicationRecord
  belongs_to :user
  belongs_to :patient
  belongs_to :doctor
  belongs_to :room
end
