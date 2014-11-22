class Fridge::GetFridge

  def initialize(params, fridge_repo=nil)
    @id = params[:id]

    @fridge_repo = fridge_repo.nil? ? FridgeRepository.new : fridge_repo
  end

  def call
    fridge_obj = @fridge_repo.load_by_id

    return nil if fridge_obj.nil?

    fridge = Fridge.new({
                      :id => fridge_obj[:id],
                      :name => fridge_obj[:name],
                      :owners => fridge_obj[:owners],
                      :items => fridge_obj[:items]
                    })
  end

end

class FridgeRepository

  def initialize
  end

  def all
  end

  def load_by_id
  end
end
