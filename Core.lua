-- Serviços e variáveis globais
getgenv().Services = {
    Players = game:GetService("Players"),
    TweenService = game:GetService("TweenService"),
    UserInputService = game:GetService("UserInputService"),
    CoreGui = game:GetService("CoreGui"),
    HttpService = game:GetService("HttpService")
}

getgenv().LocalPlayer = Services.Players.LocalPlayer
getgenv().TWEEN_SPEED = 0.2
getgenv().TWEEN_STYLE = Enum.EasingStyle.Quad

-- Constantes de cores
getgenv().Colors = {
    Background = Color3.fromRGB(30, 30, 30),
    TitleBar = Color3.fromRGB(25, 25, 25),
    TabBar = Color3.fromRGB(35, 35, 35),
    SectionBg = Color3.fromRGB(40, 40, 40),
    ButtonDefault = Color3.fromRGB(60, 60, 60),
    ButtonHover = Color3.fromRGB(70, 70, 70),
    TabSelected = Color3.fromRGB(70, 130, 200),
    CloseButton = Color3.fromRGB(200, 50, 50),
    CloseHover = Color3.fromRGB(240, 60, 60),
    TextWhite = Color3.fromRGB(255, 255, 255),
    TextGray = Color3.fromRGB(200, 200, 200),
    TextDark = Color3.fromRGB(150, 150, 150)
}

print("✓ Core carregado")
