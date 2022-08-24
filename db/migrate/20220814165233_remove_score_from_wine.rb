class RemoveScoreFromWine < ActiveRecord::Migration[7.0]
  def change
    remove_column :wines, :score, :string
  end
end
