class User < ApplicationRecord
  belongs_to :BranchOffice, optional: true
  has_many :doctors
  has_many :ars
end
