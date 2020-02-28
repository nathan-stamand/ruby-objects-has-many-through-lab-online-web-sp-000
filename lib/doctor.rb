class Doctor 
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name)
    @name=name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 
  
  def appointments 
    Appointment.all.select {|appts| appts.doctor == self}
  end 
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end 
  
  def patients 
    Patient.all.select{|patient|patient.appointments.map{|appt|appt.doctor == self}}
  end
    
  
end 