class Transbank < ApplicationRecord
  belongs_to :category, polymorphic: true
end
