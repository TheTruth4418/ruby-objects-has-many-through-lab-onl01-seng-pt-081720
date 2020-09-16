class Patient
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def new_appointment(date,doctor)
    Appointment.new(date,self,doctor)
  end
  def appointments
    Appointment.all.detect{|x| x.patient == self}
  end
  def self.all
    @@all
  end

end
