-- Função para criar abas
function createTab(name, icon)
    local tabButton = Instance.new("TextButton")
    tabButton.Name = name .. "Tab"
    tabButton.Size = UDim2.new(1, -10, 0, 35)
    tabButton.Position = UDim2.new(0, 5, 0, 10 + (#tabs * 40))
    tabButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    tabButton.Text = "  " .. icon .. "  " .. name
    tabButton.TextColor3 = Colors.TextGray
    tabButton.TextSize = 13
    tabButton.Font = Enum.Font.GothamSemibold
    tabButton.TextXAlignment = Enum.TextXAlignment.Left
    tabButton.BorderSizePixel = 0
    tabButton.AutoButtonColor = false
    tabButton.Parent = TabBar
    
    local tabCorner = Instance.new("UICorner")
    tabCorner.CornerRadius = UDim.new(0, 5)
    tabCorner.Parent = tabButton
    
    -- Página correspondente
    local page = Instance.new("ScrollingFrame")
    page.Name = name .. "Page"
    page.Size = UDim2.new(1, -20, 1, -20)
    page.Position = UDim2.new(0, 10, 0, 10)
    page.BackgroundTransparency = 1
    page.BorderSizePixel = 0
    page.ScrollBarThickness = 3
    page.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 60)
    page.Visible = false
    page.Parent = PagesContainer
    
    local pageLayout = Instance.new("UIListLayout")
    pageLayout.Padding = UDim.new(0, 8)
    pageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    pageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    pageLayout.Parent = page
    
    table.insert(tabs, {button = tabButton, page = page})
    
    -- Configurar clique da aba
    tabButton.MouseButton1Click:Connect(function()
        for _, tab in ipairs(tabs) do
            tab.page.Visible = false
            tab.button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            tab.button.TextColor3 = Colors.TextGray
        end
        
        page.Visible = true
        tabButton.BackgroundColor3 = Colors.TabSelected
        tabButton.TextColor3 = Colors.TextWhite
        currentTab = name
    end)
    
    return page
end

getgenv().createTab = createTab
print("✓ Sistema de abas pronto")
