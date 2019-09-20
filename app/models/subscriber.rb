class Subscriber < ApplicationRecord
    after_create :newsletter
    validates :email, presence: true, uniqueness: true

  def newsletter
    UserMailer.newsletter(self).deliver_now
  end
  
end
