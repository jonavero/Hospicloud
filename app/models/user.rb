class User < ApplicationRecord
  belongs_to :BranchOffice, optional: true
  has_many :doctors
  has_many :ars
  has_many :medicines
  has_many :rooms
end
