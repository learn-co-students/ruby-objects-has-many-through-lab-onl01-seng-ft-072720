class Appointment

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :time, :patient, :doctor

  def initialize(time, patient, doctor)
    @patient = patient
    @time = time
    @doctor = doctor
    @@all << self
  end
  
end