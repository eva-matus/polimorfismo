class Payment < ApplicationRecord
  belongs_to :category, polymorphic: true
end
