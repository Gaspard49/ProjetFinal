class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def total
    items.sum(&:price).round(2)
  end

end
