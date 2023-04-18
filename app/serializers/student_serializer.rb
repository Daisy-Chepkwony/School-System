class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :admission_number, :email, :id_number, :fee_paid
  belongs_to :course
  
  def course
    course = object.course
    if course.present?
      {
        id: course.id,
        name: course.name,
        description: course.description,
        fee: course.fee,
        units: course.units.map do |unit|
          {
            id: unit.id,
            name: unit.name,
            description: unit.description
          }
        end
      }
    else
      nil
    end
  end
end
