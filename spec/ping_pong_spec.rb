require('rspec')
require('ping_pong')

describe('Fixnum#ping_pong') do
  it("counts from 1 to a given number") do
    expect((5).ping_pong()).to(eq([1, 2, 3, 4, 5]))
  end

  it("returns ping-pong if the number is divisible by 3 and 5") do
    expect((16).ping_pong()).to(eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, "ping-pong", 16]))
  end

  it("returns ping if the number is divisible by 3") do
    expect((5).ping_pong()).to(eq([1, 2, "ping", 4, 5]))
  end

  it("returns pong if the number is divisible by 5") do
    expect((5).ping_pong()).to(eq([1, 2, "ping", 4, "pong"]))
  end
end
