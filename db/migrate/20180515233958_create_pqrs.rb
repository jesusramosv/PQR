class CreatePqrs < ActiveRecord::Migration[5.2]
  def change
    create_table :pqrs do |t|
      t.references :user, foreign_key: true
      t.string :name_1
      t.string :name_2
      t.string :last_name_1
      t.string :last_name_2
      t.string :email
      t.string :number
      t.date :date
      t.string :description
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
