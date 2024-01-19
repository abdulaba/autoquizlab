class Subject < ApplicationRecord
  belongs_to :institution
  belongs_to :teacher
end
