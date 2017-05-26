class TodoList
  def initialize(chores)
    @chores = chores
  end

  def get_items
   @chores
  end

  def add_item(item)
    @chores << item
  end

  def delete_item(item)
    @chores.delete(item)
  end

  def get_item(index_number)
    @chores[index_number]
  end
end