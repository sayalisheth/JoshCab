class User < ApplicationRecord
  has_many :ride_requests

  validates :first_name, :last_name, :email_id, :contact_no, presence: true
  validates :contact_no, length: { is: 10 }
  
  validates :email_id, uniqueness: true
  validates :contact_no, format: { with: /\A[1-9]{1}[0-9]{9}\z/}
 # validates :email_id, format: { with: /\A[a-zA-Z0-9_.]+[@]{1}[a-zA-z]+[.]{1}[a-zA-Z]{2,4}+\z/}
  '''validates :passward, length: { in: 4..10 }'''
end
