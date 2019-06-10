class Student < ApplicationRecord
  belongs_to :school, optional: true
end
