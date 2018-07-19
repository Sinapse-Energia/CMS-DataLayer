class CreatePActiveperiodastroclocks < ActiveRecord::Migration
  def change
    create_table :p_activeperiodastroclocks do |t|
      t.integer :sunset_offset
      t.integer :sunrise_offset
      t.references :ep_controlprogram, index: true

      t.timestamps null: false
    end
    add_foreign_key :p_activeperiodastroclocks, :ep_controlprograms
  end
end
