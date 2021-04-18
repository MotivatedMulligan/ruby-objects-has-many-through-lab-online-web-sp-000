class Doctor
  @@all = []

  attr_accessor :name, :appointments, :patient, :date

  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
  @@all
   end
  def appointments
Appointment.all.select do |apppointments| appointments.doctor = self
end
  end
  def new_appointment(date, patient)
   Appointment.new(date, patient)
  end
  def patients
    @appointments.collect do |appointments|
      appointment.patient
    end
  end
end
