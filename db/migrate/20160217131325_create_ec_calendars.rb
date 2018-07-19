class CreateEcCalendars < ActiveRecord::Migration
  def change
    create_table :ec_calendars do |t|
      t.text :address
      t.references :ep_controlprogram, index: true
      t.integer :seqbridge, :limit => 8
      t.integer :seqcms, :limit => 8
      t.boolean :actived

      t.timestamps null: false
    end
    add_foreign_key :ec_calendars, :ep_controlprograms
  end
end
