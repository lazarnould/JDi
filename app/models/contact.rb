class Contact < ApplicationRecord
  validates :email, presence: true
  # validates :email, matches regex
  validates :object, presence: true

  def after_create
    domain = self.email.split('@').last
    #ping domain
    #if ping ok notify worker
  end

end
