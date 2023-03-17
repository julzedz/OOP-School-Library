class Teacher < Person
  attr_accessor :specialization

  def initialize(age, specialization, parent_permission: true, name: 'Unknown')
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
