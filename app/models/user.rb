class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@wfscorp\.com\z/,
                  message: "must be a valid domain/email address" }
         
end