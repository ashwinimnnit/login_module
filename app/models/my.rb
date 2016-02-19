class My < ActiveRecord::Base
belongs_to :dept
validates :name, :emp_id,  presence: true





end
