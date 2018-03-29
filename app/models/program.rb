class Program < ApplicationRecord
  belongs_to :leaders, optional: true
  has_many :programevents, dependent: :destroy
  accepts_nested_attributes_for :programevents,
  reject_if: proc { |attributes| attributes['name'].blank? },
  allow_destroy: true

  validates :name,
            presence: true
  def to_s
    name
  end

end
