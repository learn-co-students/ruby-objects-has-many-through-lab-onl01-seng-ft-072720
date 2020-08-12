class Doctor
  attr_accessor :name, :patient

  @@all = []

  def initialize(name)
    @name = name
    @@all << self  #  initializes with a name and adds itself to an array of all doctors
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self) # this order matters!!!
  end

  def appointments
    Appointment.all.select do |appointment|  # returns all appointments associated with this Doctor
      appointment.doctor == self
    end
  end

  def patients
    appointments.collect do |appointment|
      appointment.patient
    end
  end




end
