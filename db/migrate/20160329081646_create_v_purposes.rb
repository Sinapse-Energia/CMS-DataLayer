class CreateVPurposes < ActiveRecord::Migration
  def change
    create_table :v_purposes do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
