class CreateStats < ActiveRecord::Migration[7.0]
  def change
    create_table :stats do |t|
      t.references :athlete, null: false, foreign_key: true
      t.references :concept, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.decimal :value

      t.timestamps
    end
  end
end
