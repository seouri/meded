class CreateArtifacts < ActiveRecord::Migration
  def self.up
    create_table :artifacts do |t|
      t.integer :category_id
      t.string :name
      t.text :definition

      t.timestamps
    end
  end

  def self.down
    drop_table :artifacts
  end
end
