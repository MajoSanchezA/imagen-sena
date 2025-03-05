class CreatePeople < ActiveRecord::Migration[8.0]
  def change
    create_table :people do |t|
      t.string :cedula
      t.string :nombre
      t.string :apellido

      t.timestamps
    end
  end
end
