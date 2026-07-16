local miscPage = createTab("Misc", "⚙️")

local miscSection = createSection(miscPage, "Utilitários")
miscSection.Size = UDim2.new(1, -10, 0, 180)

createToggle(miscSection, "Auto Clicker", UDim2.new(0, 10, 0, 30), function(state)
    print("Auto Clicker:", state)
    -- Adicione aqui a lógica do auto clicker
end)

createToggle(miscSection, "No Clip", UDim2.new(0, 10, 0, 70), function(state)
    print("No Clip:", state)
    -- Adicione aqui a lógica do noclip
end)

createToggle(miscSection, "Velocidade", UDim2.new(0, 10, 0, 110), function(state)
    print("Velocidade:", state)
    -- Adicione aqui a lógica de velocidade
end)

local visualSection = createSection(miscPage, "Visual")
visualSection.Size = UDim2.new(1, -10, 0, 120)
visualSection.Position = UDim2.new(0, 5, 0, 190)

createToggle(visualSection, "Night Mode", UDim2.new(0, 10, 0, 30), function(state)
    print("Night Mode:", state)
    -- Adicione aqui a lógica do night mode
end)

createButton(visualSection, "Mudar Tema", UDim2.new(0, 10, 0, 70), function()
    print("Mudando tema...")
    -- Adicione aqui a mudança de tema
end)

print("✓ Página Misc criada")
