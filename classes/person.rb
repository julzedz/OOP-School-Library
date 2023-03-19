require_relative '../decorators/nameable'
require_relative '../decorators/rental'

class Person < Nameable
  attr_reader :id, :type
  attr_accessor :name, :age, :rental

  def initialize(age, name, parent_permission: true)
    super()
    @id = rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rental = []
  end

  def correct_name
    @name
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def add_rental(rental)
    @rental.push(rental)
    rental.person = self
  end

  private

  def of_age?
    @age >= 18
  end
end
