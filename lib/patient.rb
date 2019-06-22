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
    Patient.all.collect do |patient|
      appointment.doctor == self
    end
  end

end
