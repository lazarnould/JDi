class Message < ApplicationRecord
  belongs_to :conversation, dependent: :destroy
  belongs_to :user

  validates :content, presence: :true
end
