class Artifact < ActiveRecord::Base
  belongs_to :category
  has_many :school_artifacts
  has_many :artifacts, :through => :school_artifacts
end
