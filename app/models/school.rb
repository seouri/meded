class School < ActiveRecord::Base
  has_many :school_artifacts
  has_many :artifacts, :through => :school_artifacts
end
