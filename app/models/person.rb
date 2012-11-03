class Person < ActiveRecord::Base
  attr_accessible :active, :born, :email_person, :federal_reg, :last_name, :name, :phone_1, :phone_2, :slug, :state_reg, :type_person
  #accepts_nested_attributes_for :placement
  has_many :placements
  extend FriendlyId
  friendly_id :federal_reg, use: :slugged
  
  def full_name
    "#{name}  #{last_name}"
  end
  private
    def should_generate_new_friendly_id?
      new_record?
    end
end
