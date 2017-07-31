class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def verify_user
    #mail_to
  end

  def validate_user
    self.update(validated: true)
  end

  def before_create
    domain = self.email.split('@').last
    #ping domain
    #if ping ok verify user
  end

end
