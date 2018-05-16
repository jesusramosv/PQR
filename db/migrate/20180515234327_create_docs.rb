class CreateDocs < ActiveRecord::Migration[5.2]
  def change
    create_table :docs do |t|
      t.references :pqr, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
