class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.boolean :has_err, default: true
      t.string  :host_info
      t.string  :ip_address
      t.string  :title

      t.timestamps
    end
  end
end
