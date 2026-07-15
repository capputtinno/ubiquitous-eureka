local combatPage = createTab("Combat", "⚔️")

local combatSection = createSection(combatPage, "Aimbot & Combate")
combatSection.Size = UDim2.new(1, -10, 0, 180)

createToggle(combatSection, "Aimbot", UDim2.new(0, 10, 0, 30), function(state)
    print("Aimbot:", state)
    -- Adicione aqui a lógica do aimbot
end)

createToggle(combatSection, "Silent Aim", UDim2.new(0, 10, 0, 70), function(state)
    print("Silent Aim:", state)
    -- Adicione aqui a lógica do silent aim
end)

createToggle(combatSection, "Auto Disparo", UDim2.new(0, 10, 0, 110), function(state)
    print("Auto Disparo:", state)
    -- Adicione aqui a lógica do auto disparo
end)

local hitboxSection = createSection(combatPage, "Hitbox")
hitboxSection.Size = UDim2.new(1, -10, 0, 120)
hitboxSection.Position = UDim2.new(0, 5, 0, 190)

createToggle(hitboxSection, "Expandir Hitbox", UDim2.new(0, 10, 0, 30), function(state)
    print("Hitbox Expandida:", state)
    -- Adicione aqui a lógica de hitbox
end)

createButton(hitboxSection, "Configurar Hitbox", UDim2.new(0, 10, 0, 70), function()
    print("Configurando hitbox...")
    -- Adicione aqui a configuração de hitbox
end)

print("✓ Página Combat criada")
