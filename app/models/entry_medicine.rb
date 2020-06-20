class EntryMedicine < ApplicationRecord
  belongs_to :medicine
  belongs_to :entry
end
