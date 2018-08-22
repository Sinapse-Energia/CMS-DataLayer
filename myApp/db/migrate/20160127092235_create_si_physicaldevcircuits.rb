class CreateSiPhysicaldevcircuits < ActiveRecord::Migration
  def change
    create_table :si_physicaldevcircuits do |t|
      t.text :name
      t.text :type_circuit
      t.boolean :magnetotermic
      t.boolean :differencial
      t.text :conductor_type
      t.text :conductor_section
      t.text :canalization_type
      t.references :si_physicaldevpanel, index: true

      t.timestamps null: false
    end
    add_foreign_key :si_physicaldevcircuits, :si_physicaldevpanels, on_delete: :cascade
  end
end
