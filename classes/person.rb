class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, parent_permission: true, name = 'Unknown')
    @id = rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def is_of_age?
    result = false
    result = true if age >= 18
    result
  end

  public

  def can_use_services?
    result = false
    if is_of_age? == true || @parent_permission == true
      result = true
    end
    result
  end
end