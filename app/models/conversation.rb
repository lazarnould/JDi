class Conversation < ApplicationRecord
  belongs_to :ticket
  belongs_to :section
end
