
class NumberValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A[A-Z]{2}[0-9]{2}[A-Z]{2}[0-9]{1,4}\z/
      record.errors[attribute] << (options[:message] || "is not valid number for cab")
    end
  end
end

class Cab < ApplicationRecord
  has_many :rides
  validates :no_of_seats, :number, presence: true
  validates :no_of_seats, numericality: true
  validates_with NumberValidator ,:attributes =>[:number]

end
