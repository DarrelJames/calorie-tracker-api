class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :logs
  has_one :goal
  validates :name, presence: true
  devise :database_authenticatable,
          :registerable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtBlacklist

  after_create :build_associations

  def goal
    super || create_goal
  end

  private

  def build_associations
    goal || true
  end
end
