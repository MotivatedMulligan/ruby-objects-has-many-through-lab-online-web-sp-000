class Doctor
  @@all = []

  attr_accessor :name, :appointment, :patient, :date, :doctor

  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
  @@all
   end

  def appointments
Appointment.all.select do |appointment| appointment.doctor == self
end
  end
  def new_appointment(date, patient)
   Appointment.new(date, patient, self)
  end
#######
  def patients
    self.appointments.map do |appointment| appointment.patient
    end
  end
  ########
end
