class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select{|s| s.doctor == self}
  end

  def patients
    appointments.collect{|s| s.patient}
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end



end
