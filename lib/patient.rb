class Patient
  attr_accessor :name 
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all.push(self)
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
  Appointment.all.select do |app|
    app.patient == self
  end
end
  
  def doctors
          g = []
  appointments.select do |app|
    g.push(app.doctor)
  end
  g
  end
  
  
end