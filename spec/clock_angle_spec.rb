require('rspec')
require('clock_angle_increments')


describe('String#clock_angle') do

  it('returns the angle of simple cases') do
    expect("12:00".clock_angle()).to(eq(0))
  end

  it('returns the angle of complex case') do
    expect("3:00".clock_angle()).to(eq(90))
  end

  it('returns the smaller angle of complex cases') do
    expect("9:00".clock_angle()).to(eq(90))
  end

  it('returns the smaller angle of mid-hour complex case') do
    expect("12:30".clock_angle()).to(eq(165))
  end

end
