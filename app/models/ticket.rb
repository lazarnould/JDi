class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :section

  # validates :object, presence: :true
  # validates :description, presence: true

end
