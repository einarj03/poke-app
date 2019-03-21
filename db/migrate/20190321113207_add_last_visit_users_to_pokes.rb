class AddLastVisitUsersToPokes < ActiveRecord::Migration[5.2]
  def change
    add_column :pokes, :receiver_last_visit, :datetime, default: -> { 'CURRENT_TIMESTAMP' }
    add_column :pokes, :sender_last_visit, :datetime, default: -> { 'CURRENT_TIMESTAMP' }
  end
end
