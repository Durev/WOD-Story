class CreateWods < ActiveRecord::Migration[5.2]
  def up
    execute <<-SQL
      CREATE TYPE wod_type AS ENUM (
        'amrap', 'emom', 'rft', 'heavy_day', 'ladder'
      );
    SQL

    create_table :wods do |t|
      t.string :name
      t.column :wod_type, :wod_type, null: false

      t.index :name, unique: true
      t.timestamps
    end
  end

  def down
    drop_table :wods
    execute "DROP type wod_type;"
  end
end
