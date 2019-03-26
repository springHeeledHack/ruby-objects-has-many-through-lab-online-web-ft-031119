class Doctor 
  @@all = []
  attr_accessor :name 
  
  def self.all 
    @@all
  end
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def new_apptointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
end