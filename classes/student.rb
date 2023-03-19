require_relative './person'

class Student < Person
  attr_accessor :classroom, :type

  def initialize(name, age, classroom, parent_permission: true)
    super(age, name: name, parent_permission: parent_permission)
    # rubocop:disable Lint/DuplicateMethods
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
  # rubocop:enable Lint/DuplicateMethods

end
