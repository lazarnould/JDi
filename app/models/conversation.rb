class Conversation < ApplicationRecord
  belongs_to :ticket
  belongs_to :section
  has_many :messages
  has_many :users, through: :messages
end
