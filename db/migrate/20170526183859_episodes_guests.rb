class EpisodesGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :episode_guests do |t|
      t.references :episode
      t.references :guest
    end
  end
end
