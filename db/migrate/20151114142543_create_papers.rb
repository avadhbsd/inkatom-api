class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :paperName
      t.string :paerMeta
      t.decimal :aditionalPrice, precision: 8, scale: 2
      t.references :poster, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
