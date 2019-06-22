class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all <<self
  end

  def self.all
    @@all
  end

  def patient
    Patient.all.select do |patient|
      appointment.patient == self
    end
  end

end
