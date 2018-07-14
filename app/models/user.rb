class User < ApplicationRecord
	has_secure_password
	
	validates :email, presence: true, uniqueness: {case_sensative: false}
 	validates :password, length: {minimum: 6, maximum: 30}
	validates_email_format_of :email, message: 'The e-mail format is not correct!'

	has_many :resumes
end
