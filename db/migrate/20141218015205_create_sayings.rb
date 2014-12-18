class CreateSayings < ActiveRecord::Migration
  def change
    create_table :sayings do |t|
      t.string :part1
      t.string :separator
      t.string :part2

      t.timestamps
    end
  end
end
