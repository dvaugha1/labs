require 'pry'

module Killable
  def alive?
    self.health > 0
  end

  def dead?
    not self.alive?
  end
end

class Rocker
  attr_reader :name
  attr_accessor :health, :level
  include Killable

  def initialize(name, level=1)
    @health_per_level ||= 10
    @damage_per_level ||= 2
    @level = level
    @name = name
    @health = level * @health_per_level
  end

  def max_damage
    @level * @damage_per_level
  end

  def damage
    rand(1..max_damage)
  end

  def attack(other)
    damage = self.damage
    other.health -= damage
    if damage > 10
      descriptor = "wallops"
    elsif damage > 3
      descriptor = "hits"
    else
      descriptor = "trips towards"
    end
    puts "#{self} #{descriptor} #{other} for #{damage} points of damage."
  end

  def to_s
    @name
  end
end

class Jb < Rocker
  def initialize(name, weapon, level=1)
    @weapon = weapon
    @damage_per_level = 10
    @health_per_level = 20
    super(name, level)
  end

  def powerslide(other)
    puts "Rocks #{other} senseless with a(n) #{@weapon}"
    num_attacks = (@level / 2) + 8
    num_attacks.times { self.attack(other) }
  end
end

class Kg < Rocker
    def initialize(name, weapon, level=1)
      @weapon = weapon
      @damage_per_level = 7
      @health_per_level = 25
      super(name, level)
    end

    def gassattack(other)
      puts "Blows #{other} other away with a powerful blast from the hindquarters!"
      num_attacks = (@level / 3) + 6
      num_attacks.times { self.attack(other) }
    end
end

class Beelzeboss
  attr_reader :level, :name
  attr_accessor :health

  include Killable

  def initialize(level)
    @level = level
    @name ||= "Beelzeboss (#{level})"
    @health ||= 0
    level.times { @health += rand(600..700) }
  end

  def attack(other)
    damage = rand(20..25) * @level
    puts "#{self} wrecked #{other} with the METAAAAAL!"
    other.health -= damage
  end

  def to_s
    @name
  end
end

binding.pry
