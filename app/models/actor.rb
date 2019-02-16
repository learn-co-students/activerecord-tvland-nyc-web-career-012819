class Actor < ActiveRecord::Base

has_many :characters
has_many :shows, through: :characters

  def full_name
    return "#{first_name} #{last_name}"
  end

  def list_roles
    return "#{self.characters.pluck(:name)[0]} - #{self.shows.pluck(:name)[0]}"
  end

end # end of class
