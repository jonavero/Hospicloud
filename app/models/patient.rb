class Patient < ApplicationRecord
  belongs_to :user
  belongs_to :ars
  has_many :entries
end
