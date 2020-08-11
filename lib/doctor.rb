class Doctor 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all
  end

  def appointments
    Appointment.all.select {|a| a.doctor == self}
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def patients 
    Appointment.all.collect do |p| 
    if p.doctor == self
      p.patient 
    end
  end
end
end