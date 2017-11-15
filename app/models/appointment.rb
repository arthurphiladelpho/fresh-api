class Appointment < ApplicationRecord
  # in appointments_controller.rb set appointment.canceled ||= false
  belongs_to :worker, class_name: 'User', foreign_key: :worker_id
  belongs_to :client, class_name: 'User', foreign_key: :client_id
  belongs_to :service
  belongs_to :location
end
