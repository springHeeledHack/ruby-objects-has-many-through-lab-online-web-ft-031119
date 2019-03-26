class Appointment
  @@all = []
  attr_accessor = :date, :patient, :doctor
  
  def self.all
    @@all 
  end
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient 
    @doctor = doctor 
    @@all << self 
  end 
  
end