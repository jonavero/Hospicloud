class Medicine < ApplicationRecord
  belongs_to :user
  has_many :entry_medicines
end
