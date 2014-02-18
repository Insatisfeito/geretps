class Delivery < ActiveRecord::Base
  belongs_to :phase
  belongs_to :group
  belongs_to :statement, class_name: "Document"
  has_many :delivery_files
  has_many :documents, through: :delivery_files
  has_many :grades
  has_many :test_results

  validates :description, :grades, :public, presence: true
  validates :description , length: { maximum: 500 }
  validates :grades ,:public , inclusion: { in: [true, false] }
end
