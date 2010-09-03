class Category < ActiveRecord::Base
  has_many :artifacts
end
