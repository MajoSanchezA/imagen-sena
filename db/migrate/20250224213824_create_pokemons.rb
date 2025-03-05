class CreatePokemons < ActiveRecord::Migration[8.0]
  def change
    create_table :pokemons do |t|
      t.string :nombre
      t.string :tipo
      t.string :habilidad
      t.string :color

      t.timestamps
    end
  end
end
