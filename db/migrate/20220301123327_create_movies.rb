class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|

      t.string :title, null: false, default:''
      t.text :overview, null: false, default:''
      t.string :poster_url, null: false, default:''
      t.float :rating, null: false, default: 0.0, precision: 2

      t.timestamps
    end
  end
end
