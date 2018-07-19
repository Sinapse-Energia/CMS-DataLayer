class CreateEpControlprograms < ActiveRecord::Migration
  def change
    create_table :ep_controlprograms do |t|
      t.text :name
      t.integer :seqbridge, :limit => 8
      t.integer :seqcms, :limit => 8

      t.timestamps null: false
    end
  end
end
