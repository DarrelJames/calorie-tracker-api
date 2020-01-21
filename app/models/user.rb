class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :logs
  has_one :goal
  validates :name, presence: true
  devise :database_authenticatable,
          :registerable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtBlacklist
end
