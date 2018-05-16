class AddDepartamentIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :departament, foreign_key: true
  end
end
