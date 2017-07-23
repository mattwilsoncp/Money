class RegisterEntry < ApplicationRecord
  belongs_to :register
  belongs_to :category
end
