class RemoveReferenceAddReference < ActiveRecord::Migration[6.0]
  def change
    remove_reference(:reviews, :restaurants, foreign_key: true)
  end
end
