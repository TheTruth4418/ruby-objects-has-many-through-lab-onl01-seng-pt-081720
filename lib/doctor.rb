class Doctor
  @@all = []
  attr_accessor :name
def initialize(name)
  @name = name
  @@all << self
end

  def new_appointment(date,patient)
      Appointment.new(date,patient,self)
  end

  def appointments
    Appontment.all.select{|x| x.doctor == self}
  end

def self.all
  @@all
end

end
