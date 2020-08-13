class Patient  

attr_accessor :name, :appointment, :date

@@all = []


  def initialize(name) 
    @name = name 
    save
  end  
  
  def self.all
    @@all
  end 
  
  #that takes in a date and an instance of the Doctor class in this order and creates a new Appointment. The Appointment should know that it belongs to the patient.
  def new_appointment(date, doctor)
    appointment = Appointment.new(date, self, doctor)
    self.appointments.last 
  end 

  
  # that iterates through the Appointments array and returns Appointments that belong to the patient
  def appointments 
    Appointment.all.select {|appointment| appointment.patient == self}
  end 
  
  #that iterates over that patient's Appointments and collects the doctor that belongs to each Appointment
  def doctors 
    Appointment.all.collect do |appointment|
    appointment.doctor 
    end
    
  end 
  
  def save 
    @@all << self 
  end
end 