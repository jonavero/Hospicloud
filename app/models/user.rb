class User < ApplicationRecord
  has_secure_password
  belongs_to :BranchOffice, optional: true
  has_many :doctors
  has_many :ars
  has_many :medicines
  has_many :rooms
  has_many :beds
  has_many :patients
  has_many :entries
end
