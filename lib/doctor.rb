class Doctor
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def appointments
    Appointment.all.select{ |find| find.doctor == self}
  end
  def new_appointment(appointment, patient)
    Appointment.new(appointment, patient, self)
  end
  def patients
    appointments.map{|doctor| doctor.patient}
  end
end
