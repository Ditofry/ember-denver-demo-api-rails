class CreateEmburritos < ActiveRecord::Migration
  def change
    create_table :emburritos do |t|
      t.string :name
      t.text :introduction

      t.timestamps null: false
    end
  end
end
