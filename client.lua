RegisterCommand("lostitems", function(source, args, rawCommand)
      local health = GetEntityHealth(PlayerPedId())
      print(health)
  
      if health == 0 then
          TriggerServerEvent('lostitems')
      elseif health > 0 then
          TriggerServerEvent('lostitemsnotdead')
      end
  end)
  
