local farmPage = createTab("Farm", "🌾")

local farmSection = createSection(farmPage, "Auto Farm")
farmSection.Size = UDim2.new(1, -10, 0, 180)

createToggle(farmSection, "Auto Farm", UDim2.new(0, 10, 0, 30), function(state)
    print("Auto Farm:", state)
    -- Adicione aqui a lógica do auto farm
end)

createToggle(farmSection, "Coleta Automática", UDim2.new(0, 10, 0, 70), function(state)
    print("Coleta Automática:", state)
    -- Adicione aqui a lógica de coleta
end)

createToggle(farmSection, "Auto Vender", UDim2.new(0, 10, 0, 110), function(state)
    print("Auto Vender:", state)
    -- Adicione aqui a lógica de venda automática
end)

local mobSection = createSection(farmPage, "Mobs")
mobSection.Size = UDim2.new(1, -10, 0, 120)
mobSection.Position = UDim2.new(0, 5, 0, 190)

createButton(mobSection, "Selecionar Mob", UDim2.new(0, 10, 0, 35), function()
    print("Selecionando mob...")
    -- Adicione aqui a seleção de mobs
end)

createButton(mobSection, "Lista de Mobs", UDim2.new(0, 170, 0, 35), function()
    print("Abrindo lista de mobs...")
    -- Adicione aqui a lista de mobs
end)

print("✓ Página Farm criada")
