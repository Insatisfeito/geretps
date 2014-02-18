class Phase < ActiveRecord::Base
  belongs_to :project
  belongs_to :statement, class_name: "Document"
  has_many :required_files
  has_many :phase_files
  has_many :documents, through: :phase_files
  has_many :tests
  has_many :deliveries

  validates :name, :begin_date, :project, presence: true
  validates :begin_date, date: true
  validates :end_date, date: {after: :begin_date}
end
