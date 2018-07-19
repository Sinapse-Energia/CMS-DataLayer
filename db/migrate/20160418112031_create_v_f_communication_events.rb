class CreateVFCommunicationEvents < ActiveRecord::Migration
  def change
    create_table :v_f_communication_events do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
