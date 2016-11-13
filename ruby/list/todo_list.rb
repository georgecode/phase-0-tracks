class TodoList

  def initialize(input)
    @input = input
  end

  def get_items
    @input
  end

  def add_item(item)
    @input << item
  end

  def delete_item(delete_item)
    @input.delete(delete_item)
  end

  def get_item(index)
    @input[index]
  end

end