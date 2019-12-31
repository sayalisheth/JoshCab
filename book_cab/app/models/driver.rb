class Driver < ApplicationRecord
  has_many :rides

  validates :first_name, :last_name, :contact_no, :license_no, presence: true
  validates :contact_no, length: { is: 10 }
  validates :contact_no, format: { with: /\A[1-9]{1}[0-9]{9}\z/}
end
