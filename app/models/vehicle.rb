# == Schema Information
#
# Table name: vehicles
#
#  id                  :bigint(8)        not null, primary key
#  vin                 :string
#  make                :string
#  model               :string
#  year                :integer
#  vehicle_type_name   :string
#  color               :string
#  current_meter_value :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Vehicle < ApplicationRecord
end
