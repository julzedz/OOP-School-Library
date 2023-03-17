class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true) 
    @id = rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def of_age?
    result = false
    result = true if age >= 18
    result
  end

  public

  def can_use_services?
    result = false
    if of_age? == true || @parent_permission == true
      result = true
    end
    result
  end
end