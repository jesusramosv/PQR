class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.references :pqr, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
