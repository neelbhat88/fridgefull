class Fridge
  attr_accessor :id, :name, :owners, :items

  def initialize(params)
    @id = params[:id]
    @name = params[:name]
    @owners = params[:owners]
    @items = params[:items]
  end

  def serialize
    return self
  end

end
