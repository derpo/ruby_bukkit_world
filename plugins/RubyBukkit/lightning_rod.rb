Plugin.is {
  name 'LightningRod'
  version '0.0.1'
  author 'Derpo'
}

import 'org.bukkit.Material'
import 'org.bukkit.event.player.PlayerInteractEvent'

class LightningRod < RubyPlugin
  def onEnable
    registerEvent(PlayerInteractEvent, :Normal) do |event|
      player = event.player
      inHand = player.itemInHand.type
      rod = Material::FISHING_ROD

      if inHand == rod
        player.world.strikeLightning(player.getTargetBlock(nil, 200).location)
        player.world.createExplosion(player.getTargetBlock(nil, 200).location,4)
      end
    end

  end
end

