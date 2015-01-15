require 'pry'

module Killable
  def alive?
    self.health > 0
  end

  def dead?
    not self.alive?
  end
end

module Zombifiable
  # DEPENDS ON THE Killable MODULE!!!
  def reanimate
    if self.dead?
      self.health = Float::Infinity
    end
  end

  def headshot
    puts "Boom!"
    self.health = 0
  end
end

class Adventurer
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

class Monster
  attr_reader :level, :name
  attr_accessor :health

  include Killable

  def initialize(level)
    @level = level
    @name ||= "Monster (#{level})"
    @health ||= 0
    level.times { @health += rand(1..4) }
  end

  def attack(other)
    damage = rand(1..4) * @level
    puts "#{self} viciously assaults #{other} for #{damage} damage."
    other.health -= damage
  end

  def to_s
    @name
  end
end

class Warrior < Adventurer
  def initialize(name, weapon, level=1)
    @weapon = weapon
    @damage_per_level = 4
    @health_per_level = 20
    super(name, level)
  end

  def savage_attack(other)
    puts "Beating #{other} senseless with a(n) #{@weapon}"
    num_attacks = (@level / 3) + 1
    num_attacks.times { self.attack(other) }
  end
end


class Sorcerer < Adventurer
  def intialize(name, level=1)
    @damage_per_level = 1
    @health_per_level = 5
    super(name, level)
  end

  def lightning
    puts "#{other} got zapped into crispy treats by a lightning bolt outta nowhere!!!"
    num_attacks = (@level/5) + 3
    num_attacks.times { self. attack(other) }
  end
end

class Dragon < Monster
  def initialize(level)
    level = 0
    @name = "RAWR IMMA DRAGON (#{level})"
    @health = 50
    level.times { @health += rand(15..20) }
  end

  def fire_breath(other)
    damage = rand(15..20) * @level
    puts "TASTE MY FIIIIIIRRREEEEEE #{other} FOR #{damage} DAMAGE!"
    other.health -= damage
  end
end

class Rogue < Adventurer
  def initialize (name, weapon, level)
    @health_per_level = 8
    super(name, level)
  end

  def shank(other)
    damage = self.damage
    other.health -= damage
    if damage > 10
      descriptor = "destroyed #{@other} in the night by #{@weapon}"
    elsif damage >2
      descriptor = "did something to #{@other} with #{@weapon}"
    else
      descriptor = "basically hit his/herself with #{@weapon}"
    end
    puts "#{self} #{descriptor} for #{damage} points of damage."
  end
end

class Goblin < Monster
  def initialize (level)
    level = 0
    @name = "RAWR IMMA DRAGON (#{level})"
    @health = 3
    level.times { @health += rand(1..8) }
  end

  def goblin_shiv(other)
    damage = rand(3..6) * @level
    puts "#{other} done got stabbed for #{damage} damage!"
    other.health -= damage
  end
end


binding.pry
