class CreateGlobalConfigSettings < ActiveRecord::Migration
  def change
    create_table :global_config_settings do |t|
      t.string :data
      t.string :data_class
      t.string :data_key

      t.timestamps
    end
  end
end
