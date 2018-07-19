class CreateEsScenes < ActiveRecord::Migration
  def change
    create_table :es_scenes do |t|
      t.text :scene_id
      t.references :l_lightstate, index: true

      t.timestamps null: false
    end
    add_foreign_key :es_scenes, :l_lightstates
  end
end
