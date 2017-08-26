class AddHeadshotToArtists < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :headshot, :string
  end
end
