class Section < ApplicationRecord
  has_many :workers
  has_many :sections
end
