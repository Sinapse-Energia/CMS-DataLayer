class CreatePActiveperiodabsolutes < ActiveRecord::Migration
  def change
    create_table :p_activeperiodabsolutes do |t|
      t.time :start_time
      t.time :end_time
      t.references :ep_controlprogram, index: true

      t.timestamps null: false
    end
    add_foreign_key :p_activeperiodabsolutes, :ep_controlprograms
  end
end
