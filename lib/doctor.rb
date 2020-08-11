class Doctor
  attr_accessor :patient, :name, :date 
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.doctor = self}
    
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def patients
    appointments.map {|appointment| appointment.patient}
  end
end
  