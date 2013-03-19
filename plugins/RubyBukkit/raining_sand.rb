Plugin.is {
  name 'RainingSand'
  version '0.0.1'
  author 'chrismo'
}

import 'org.bukkit.Material'
import 'org.bukkit.Location'
import 'org.bukkit.event.player.PlayerMoveEvent'

class RainingSand < RubyPlugin
  def onEnable
    registerEvent(PlayerMoveEvent, :Normal) do |event|
     # rainOneSand(event.player)
    end
  end

  def rainOneSand(player)
    location = player.getLocation
    world = location.getWorld
    new_block_location = Location.new(world, location.getX, location.getY + 100, location.getZ)
    new_block = world.getBlockAt(new_block_location)
    new_block.setType(Material::SAND)
  end
end