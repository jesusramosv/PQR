class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :pqr, foreign_key: true
      t.references :user, foreign_key: true
      t.text :comment
      t.date :date
      t.string :finished

      t.timestamps
    end
  end
end
