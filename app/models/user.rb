class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders, dependent: :destroy
  has_many :guides, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :wishes, dependent: :destroy
  has_many :wished_guides, through: :wishes, source: :guide
  has_many :conversations, :foreign_key => :sender_id

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
