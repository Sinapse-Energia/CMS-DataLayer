class CreateVFPhotocellEvents < ActiveRecord::Migration
  def change
    create_table :v_f_photocell_events do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
