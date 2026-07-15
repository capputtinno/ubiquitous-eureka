local mainPage = createTab("Main", "🏠")

local mainSection = createSection(mainPage, "Informações do Jogador")
mainSection.Size = UDim2.new(1, -10, 0, 150)

local playerInfoLabel = Instance.new("TextLabel")
playerInfoLabel.Size = UDim2.new(1, -20, 0, 80)
playerInfoLabel.Position = UDim2.new(0, 10, 0, 35)
playerInfoLabel.BackgroundTransparency = 1
playerInfoLabel.Text = "👤 Jogador: " .. LocalPlayer.Name .. "\n🆔 ID: " .. LocalPlayer.UserId .. "\n❤️ Vida: Carregando...\n⭐ Nível: Carregando..."
playerInfoLabel.TextColor3 = Colors.TextWhite
playerInfoLabel.TextSize = 13
playerInfoLabel.Font = Enum.Font.Gotham
playerInfoLabel.TextXAlignment = Enum.TextXAlignment.Left
playerInfoLabel.TextYAlignment = Enum.TextYAlignment.Top
playerInfoLabel.Parent = mainSection
getgenv().playerInfoLabel = playerInfoLabel

createButton(mainSection, "Atualizar Info", UDim2.new(0, 10, 0, 120), function()
    print("Atualizando informações...")
end)

-- Atualizar informações periodicamente
spawn(function()
    while wait(1) do
        if ScreenGui and ScreenGui.Parent then
            local health = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid.Health or 0
            playerInfoLabel.Text = "👤 Jogador: " .. LocalPlayer.Name .. "\n🆔 ID: " .. LocalPlayer.UserId .. "\n❤️ Vida: " .. math.floor(health) .. "\n⭐ Nível: Carregando..."
        end
    end
end)

-- Selecionar primeira aba
if tabs[1] then
    tabs[1].page.Visible = true
    tabs[1].button.BackgroundColor3 = Colors.TabSelected
    tabs[1].button.TextColor3 = Colors.TextWhite
end

print("✓ Página Main criada")
