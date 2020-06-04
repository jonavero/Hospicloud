class User < ApplicationRecord
  belongs_to :BranchOffice, optional: true
end
