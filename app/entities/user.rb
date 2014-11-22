class User
  attr_accessor :id, :email, :first_name, :last_name, :fridges

  def initialize
  end

  def full_name
    @first_name + " " + @last_name
  end
end
