class AddSportIdToConcepts < ActiveRecord::Migration[7.0]
  def change
    add_reference :concepts, :sport, foreign_key: true
  end
end
