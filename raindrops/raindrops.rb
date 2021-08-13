module Raindrops
  def self.convert(number)
    sounds = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }
    raindrops_sound = sounds.each_key.map { |k| (number % k).zero? ? sounds[k] : '' }.join
    return raindrops_sound.empty? ? number.to_s : raindrops_sound
  end
end
