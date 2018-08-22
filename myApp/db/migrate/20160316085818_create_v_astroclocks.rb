class CreateVAstroclocks < ActiveRecord::Migration
  def change
    create_table :v_astroclocks do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
