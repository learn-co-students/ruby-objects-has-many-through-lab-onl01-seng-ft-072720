class Doctor  

attr_accessor :name, :appointment, :patient

@@all = []


  def initialize(name) 
    @name = name 
    save
  end  
  
  def self.all
    @@all
  end 
  
   #iterates through all Appointments and finds those belonging to this doctor.
  def appointments 
    Appointment.all.select {|appointment| appointment.doctor == self}
  end 
  
  #takes in a date and an instance of the Patient class in this order, and creates a new Appointment. That Appointment should know that it belongs to the doctor
  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
    self.appointments.last 
  end 
  
  # that iterates over that doctor's Appointments and collects the patient that belongs to each Appointments.
  def patients
    Appointment.all.collect do |appointment|
    appointment.patient
    end
    
  end 
   
  def save 
    @@all << self 
  end
end 