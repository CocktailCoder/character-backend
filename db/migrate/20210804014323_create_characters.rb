class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :character_name
      t.string :race
      t.string :class
      t.string :alignment
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.string :personality
      t.string :traits
      t.string :flaws
      t.string :equipment
      t.references :campaign
      t.references :player
  end
end
end