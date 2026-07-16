-- Minimizar/Maximizar
MinimizeButton.MouseButton1Click:Connect(function()
    minimized = not minimized
    if minimized then
        Services.TweenService:Create(MainFrame, TweenInfo.new(TWEEN_SPEED, TWEEN_STYLE), {Size = UDim2.new(0, 550, 0, 40)}):Play()
        MinimizeButton.Text = "+"
    else
        Services.TweenService:Create(MainFrame, TweenInfo.new(TWEEN_SPEED, TWEEN_STYLE), {Size = UDim2.new(0, 550, 0, 380)}):Play()
        MinimizeButton.Text = "—"
    end
end)

-- Fechar
CloseButton.MouseButton1Click:Connect(function()
    Services.TweenService:Create(MainFrame, TweenInfo.new(TWEEN_SPEED, TWEEN_STYLE), {Size = UDim2.new(0, 0, 0, 0)}):Play()
    wait(TWEEN_SPEED)
    ScreenGui:Destroy()
end)

-- Efeitos hover
local function addHoverEffect(button, defaultColor, hoverColor)
    button.MouseEnter:Connect(function()
        Services.TweenService:Create(button, TweenInfo.new(0.1), {BackgroundColor3 = hoverColor}):Play()
    end)
    
    button.MouseLeave:Connect(function()
        Services.TweenService:Create(button, TweenInfo.new(0.1), {BackgroundColor3 = defaultColor}):Play()
    end)
end

addHoverEffect(MinimizeButton, Color3.fromRGB(50, 50, 50), Colors.ButtonHover)
addHoverEffect(CloseButton, Colors.CloseButton, Colors.CloseHover)

print("✓ Efeitos configurados")
