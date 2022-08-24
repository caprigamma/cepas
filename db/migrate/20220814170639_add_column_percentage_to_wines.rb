class AddColumnPercentageToWines < ActiveRecord::Migration[7.0]
  def change
    add_column :wines, :percentage, :integer
  end
end
