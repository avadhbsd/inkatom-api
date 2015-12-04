class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :sizeName
      t.string :heightInInch
      t.string :widthInInch
      t.string :heightInCM
      t.string :widthInCM
      t.string :heightInFeet
      t.string :widthInFeet
      t.string :meta
      t.references :poster, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
