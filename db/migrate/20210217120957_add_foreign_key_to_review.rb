class AddForeignKeyToReview < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :restaurants, foreign_key: true
  end
end
