class CreateVGenericEvents < ActiveRecord::Migration
  def change
    create_table :v_generic_events do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
