local espPage = createTab("ESP", "👁️")

local espSection = createSection(espPage, "ESP de Jogadores")
espSection.Size = UDim2.new(1, -10, 0, 220)

createToggle(espSection, "ESP de Jogadores", UDim2.new(0, 10, 0, 30), function(state)
    print("ESP Jogadores:", state)
    -- Adicione aqui a lógica do ESP
end)

createToggle(espSection, "Mostrar Nome", UDim2.new(0, 10, 0, 70), function(state)
    print("Mostrar Nome:", state)
    -- Adicione aqui mostrar nome
end)

createToggle(espSection, "Mostrar Vida", UDim2.new(0, 10, 0, 110), function(state)
    print("Mostrar Vida:", state)
    -- Adicione aqui mostrar vida
end)

createToggle(espSection, "Mostrar Distância", UDim2.new(0, 10, 0, 150), function(state)
    print("Mostrar Distância:", state)
    -- Adicione aqui mostrar distância
end)

local itemEspSection = createSection(espPage, "ESP de Itens")
itemEspSection.Size = UDim2.new(1, -10, 0, 120)
itemEspSection.Position = UDim2.new(0, 5, 0, 230)

createToggle(itemEspSection, "ESP de Itens", UDim2.new(0, 10, 0, 30), function(state)
    print("ESP Itens:", state)
    -- Adicione aqui ESP de itens
end)

createButton(itemEspSection, "Configurar Cores", UDim2.new(0, 10, 0, 70), function()
    print("Configurando cores do ESP...")
    -- Adicione aqui configuração de cores
end)

print("✓ Página ESP criada")
