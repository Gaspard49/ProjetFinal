class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders
  has_one_attached :avatar, optional: true
  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

  after_create :welcome_send, :new_order
  
  def new_order 
    Order.create(user_id:self.id, status: true) 
  end

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end

