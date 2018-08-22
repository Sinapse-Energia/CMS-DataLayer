class CreateEdClasslogicaldevs < ActiveRecord::Migration
  def change
    create_table :ed_classlogicaldevs do |t|
      t.text :name
      t.text :type_device
      t.text :address

      t.timestamps null: false
    end
  end
end
