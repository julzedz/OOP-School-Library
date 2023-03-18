require_relative './person'

class Student < Person
  attr_accessor :classroom, :type

  def initialize(classroom, age, name, parent_permission: true, type: 'Student')
    super(age, name: name, parent_permission: parent_permission)
    @classroom = classroom
    @type = type
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
