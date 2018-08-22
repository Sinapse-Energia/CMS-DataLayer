class CreateVControltypes < ActiveRecord::Migration
  def change
    create_table :v_controltypes do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
