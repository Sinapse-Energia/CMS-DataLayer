class CreateSiGeneralInformations < ActiveRecord::Migration
  def change
    create_table :si_general_informations do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
