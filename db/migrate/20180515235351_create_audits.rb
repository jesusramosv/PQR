class CreateAudits < ActiveRecord::Migration[5.2]
  def change
    create_table :audits do |t|
      t.references :user, foreign_key: true
      t.references :pqr, foreign_key: true
      t.string :name_1
      t.string :name_2
      t.string :last_name_1
      t.string :last_name_2
      t.text :description
      t.string :action
      t.text :backup
      
      t.timestamps
    end
  end
end
