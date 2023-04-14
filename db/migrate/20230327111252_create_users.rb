class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo, default: 'https://img.freepik.com/free-icon/user_318-804790.jpg?w=2000'
      t.text :bio
      t.integer :posts_counter, default: 0

      t.timestamps
    end
  end
end
