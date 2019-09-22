class Subscriber < ApplicationRecord
    after_create :newsletter
    validates :email,
      presence: true,
      uniqueness: true,
      format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}

  def newsletter
    UserMailer.newsletter(self).deliver_now
  end
  
end
