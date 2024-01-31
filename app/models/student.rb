class Student < ApplicationRecord
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable

  belongs_to :institution
end
