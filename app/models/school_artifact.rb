class SchoolArtifact < ActiveRecord::Base
  belongs_to :school
  belongs_to :artifact
  belongs_to :reference
end
