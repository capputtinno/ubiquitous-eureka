local teleportPage = createTab("Teleport", "📍")

local teleportSection = createSection(teleportPage, "Teleportes Rápidos")
teleportSection.Size = UDim2.new(1, -10, 0, 250)

createButton(teleportSection, "Spawn", UDim2.new(0, 10, 0, 35), function()
    print("Teleportando para Spawn...")
    -- Adicione coordenadas do spawn
end)

createButton(teleportSection, "Área de Farm", UDim2.new(0, 170, 0, 35), function()
    print("Teleportando para Farm...")
    -- Adicione coordenadas da farm
end)

createButton(teleportSection, "Boss Principal", UDim2.new(0, 10, 0, 80), function()
    print("Teleportando para Boss...")
    -- Adicione coordenadas do boss
end)

createButton(teleportSection, "Loja", UDim2.new(0, 170, 0, 80), function()
    print("Teleportando para Loja...")
    -- Adicione coordenadas da loja
end)

createButton(teleportSection, "Área Secreta", UDim2.new(0, 10, 0, 125), function()
    print("Teleportando para Área Secreta...")
    -- Adicione coordenadas da área secreta
end)

local customTeleportSection = createSection(teleportPage, "Teleporte Customizado")
customTeleportSection.Size = UDim2.new(1, -10, 0, 120)
customTeleportSection.Position = UDim2.new(0, 5, 0, 260)

local coordInput = Instance.new("TextBox")
coordInput.Size = UDim2.new(1, -20, 0, 30)
coordInput.Position = UDim2.new(0, 10, 0, 35)
coordInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
coordInput.Text = ""
coordInput.TextColor3 = Colors.TextGray
coordInput.TextSize = 13
coordInput.Font = Enum.Font.Gotham
coordInput.PlaceholderText = "X, Y, Z"
coordInput.PlaceholderColor3 = Colors.TextDark
coordInput.Parent = customTeleportSection

local coordCorner = Instance.new("UICorner")
coordCorner.CornerRadius = UDim.new(0, 4)
coordCorner.Parent = coordInput

createButton(customTeleportSection, "Teleportar", UDim2.new(0, 10, 0, 75), function()
    local coords = coordInput.Text:split(",")
    if #coords == 3 then
        local x, y, z = tonumber(coords[1]), tonumber(coords[2]), tonumber(coords[3])
        if x and y and z then
            LocalPlayer.Character:MoveTo(Vector3.new(x, y, z))
        end
    end
end)

print("✓ Página Teleport criada")
