class CreateVStateregulators < ActiveRecord::Migration
  def change
    create_table :v_stateregulators do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
