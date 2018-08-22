class CreateVClotypes < ActiveRecord::Migration
  def change
    create_table :v_clotypes do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
