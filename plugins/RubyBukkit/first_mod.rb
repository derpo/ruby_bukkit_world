Plugin.is {
  name "AwesomeDirt"
  version "0.2"
  author "Josh"
}

import 'org.bukkit.Material'
import 'org.bukkit.inventory.ItemStack'
import 'org.bukkit.inventory.ShapelessRecipe'

class AwesomeDirt < RubyPlugin
  def onEnable
    result = ItemStack.new(Material::DIAMOND_PICKAXE, 1)
    recipe = ShapelessRecipe.new(result)
    recipe.addIngredient(1, Material::DIRT)
    getServer.addRecipe( recipe )
  end
end