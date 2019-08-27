class AddBodyToSequences < ActiveRecord::Migration[6.0]
  def change
    add_column :sequences, :body, :text
  end
end
