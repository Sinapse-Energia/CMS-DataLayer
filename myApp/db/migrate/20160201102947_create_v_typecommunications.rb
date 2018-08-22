class CreateVTypecommunications < ActiveRecord::Migration
  def change
    create_table :v_typecommunications do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
