--[[
    Reign Fall Hub - Loader Principal
    Execute APENAS este arquivo no seu executor
]]

-- ⚠️ SUBSTITUA "SEU_USUARIO" pelo seu nome de usuário do GitHub
local GITHUB_USER = "SEU_USUARIO"
local GITHUB_REPO = "ReignFallHub"
local GITHUB_BRANCH = "main"

local BASE_URL = "https://raw.githubusercontent.com/" .. GITHUB_USER .. "/" .. GITHUB_REPO .. "/" .. GITHUB_BRANCH .. "/"

-- Função para carregar módulos
local function loadModule(moduleName)
    local url = BASE_URL .. moduleName .. ".lua"
    print("Carregando: " .. moduleName)
    
    local success, result = pcall(function()
        return game:HttpGet(url)
    end)
    
    if success and result then
        local loadSuccess, loadResult = pcall(function()
            return loadstring(result)()
        end)
        
        if loadSuccess then
            print("✓ " .. moduleName .. " carregado!")
        else
            warn("✗ Erro em " .. moduleName .. ": " .. tostring(loadResult))
        end
    else
        warn("✗ Falha ao baixar " .. moduleName)
    end
end

-- Verificar se GUI já existe
if game.CoreGui:FindFirstChild("ReignFallHub") then
    game.CoreGui.ReignFallHub:Destroy()
end

print("=" .. string.rep("=", 40))
print("Reign Fall Hub - Iniciando...")
print("=" .. string.rep("=", 40))

-- Carregar módulos em ordem
local modules = {
    "core",
    "gui_main",
    "tabs",
    "components",
    "pages_main",
    "pages_combat", 
    "pages_farm",
    "pages_esp",
    "pages_teleport",
    "pages_misc",
    "drag_system",
    "effects"
}

for _, module in ipairs(modules) do
    loadModule(module)
    wait(0.1) -- Pequena pausa entre carregamentos
end

print("=" .. string.rep("=", 40))
print("Hub carregado com sucesso!")
print("=" .. string.rep("=", 40))
