class CreateArFlampactuatorScenes < ActiveRecord::Migration
  def change
    create_table :ar_flampactuator_scenes do |t|
      t.references :f_lampactuator, index: true
      t.references :es_scene, index: true

      t.timestamps null: false
    end
    add_foreign_key :ar_flampactuator_scenes, :f_lampactuators
    add_foreign_key :ar_flampactuator_scenes, :es_scenes
  end
end
