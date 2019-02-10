
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, :through => :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    self.characters.map { |char| "#{char.name} - #{char.show.name}" }
    #char.show.name => self.shows.name will not work because self.shows returns an array.
  end

end
