class CreateSchoolArtifacts < ActiveRecord::Migration
  def self.up
    create_table :school_artifacts do |t|
      t.integer :school_id
      t.integer :artifact_id
      t.text :description
      t.integer :reference_id

      t.timestamps
    end
  end

  def self.down
    drop_table :school_artifacts
  end
end
