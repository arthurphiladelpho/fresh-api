class WorkerRating < ApplicationRecord
  belongs_to :worker, class_name: 'User', foreign_key: :worker_id
  belongs_to :client, class_name: 'User', foreign_key: :client_id
end
