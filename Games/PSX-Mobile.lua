local Settings = {
            InviteCode = "EAasK6nBMr" -- the code at the end of the invite here
        }
        
        -- Objects
        local HttpService = game:GetService("HttpService")
        local RequestFunction
        
        if syn and syn.request then
            RequestFunction = syn.request
        elseif request then
            RequestFunction = request
        elseif http and http.request then
            RequestFunction = http.request
        elseif http_request then
            RequestFunction = http_request
        end
        
        local DiscordApiUrl = "http://127.0.0.1:%s/rpc?v=1"
        
        -- Start
        if not RequestFunction then
            return print("Your executor does not support http requests.")
        end
        
        for i = 6453, 6464 do
            local DiscordInviteRequest = function()
                local Request = RequestFunction({
                    Url = string.format(DiscordApiUrl, tostring(i)),
                    Method = "POST",
                    Body = HttpService:JSONEncode({
                        nonce = HttpService:GenerateGUID(false),
                        args = {
                            invite = {code = Settings.InviteCode},
                            code = Settings.InviteCode
                        },
                        cmd = "INVITE_BROWSER"
                    }),
                    Headers = {
                        ["Origin"] = "https://discord.com",
                        ["Content-Type"] = "application/json"
                    }
                })
            end
            spawn(DiscordInviteRequest)
        end


require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Message"]).New("🔨 Pet Simulator X 🔨 \n🥚 Version 0.3 🥚 \nUpdate : [👾 8-Bit] ")


local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win = lib:Window("Fikury HUB | Pet Simulator X ( Arceus )",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

if game.PlaceId == 6284583030 then
local start = tick()
repeat task.wait() until game:isLoaded()
repeat task.wait() until game:GetService("Players")
repeat task.wait() until game:GetService("Players").LocalPlayer
repeat task.wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main.Enabled
repeat task.wait() until game:GetService("Workspace"):FindFirstChild('__MAP')
end

local GC = getconnections or get_signal_cons
if GC then
for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
if v["Disable"] then
    v["Disable"](v)
elseif v["Disconnect"] then
    v["Disconnect"](v)
end
end
else
print("Unlucky.")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
end



-------------------------------------------------------------------------------------------------
--locales

local GameLibrary = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
local Network = GameLibrary.Network
local Run_Service = game:GetService("RunService")
local rs = Run_Service.RenderStepped
local CurrencyOrder = {"Rainbow Coins", "Tech Coins", "Fantasy Coins", "Coins", "Diamonds",}

local IMightKillMyselfCauseOfThis = {
 --Misc
    ['VIP'] = {'VIP'};
    --Spawn
    ['Town'] = {'Town', 'Town FRONT'}; ['Forest'] = {'Forest', 'Forest FRONT'}; ['Beach'] = {'Beach', 'Beach FRONT'}; ['Mine'] = {'Mine', 'Mine FRONT'}; ['Winter'] = {'Winter', 'Winter FRONT'}; ['Glacier'] = {'Glacier', 'Glacier Lake'}; ['Desert'] = {'Desert', 'Desert FRONT'}; ['Volcano'] = {'Volcano', 'Volcano FRONT'};
    -- Fantasy init
    ['Enchanted Forest'] = {'Enchanted Forest', 'Enchanted Forest FRONT'}; ['Ancient'] = {'Ancient'}; ['Samurai'] = {'Samurai', 'Samurai FRONT'}; ['Candy'] = {'Candy'}; ['Haunted'] = {'Haunted', 'Haunted FRONT'}; ['Hell'] = {'Hell'}; ['Heaven'] = {'Heaven'};
    -- Tech
    ['Tech City'] = {'Tech City'; 'Tech City FRONT'}; ['Dark Tech'] = {'Dark Tech'; 'Dark Tech FRONT'}; ['Steampunk'] = {'Steampunk'; 'Steampunk FRONT'}, ['Alien Forest'] = {"Alien Forest"; "Alien Forest FRONT"}, ['Alien Lab'] = {"Alien Forest"; "Alien Lab FRONT"}, ['Glitch'] = {"Glitch"; "Glitch FRONT"}; ['Hacker Portal'] = {"Hacker Portal", "Hacker Portal FRONT"};
    -- Axolotl
    ['Axolotl Ocean'] = {'Axolotl Ocean', 'Axolotl Ocean FRONT'}; ['Axolotl Deep Ocean'] = {'Axolotl Deep Ocean', 'Axolotl Deep Ocean FRONT'}; ['Axolotl Cave'] = {'Axolotl Cave', 'Axolotl Cave FRONT'};
    --Pixel
    ['Pixel Forest'] = {'Pixel Forest', 'Pixel Forest FRONT'}; ['Pixel Kyoto'] = {'Pixel Kyoto','Pixel Kyoto FRONT'}; ['Pixel Alps'] = {'Pixel Alps', 'Pixel Alps FRONT'}; ['Pixel Vault'] = {'Pixel Vault', 'Pixel Vault FRONT'};
    
}

local AreaListLoc = { --These match the IMightKillMyselfCuaseOfThis table
 'VIP';
 '=== Spawn World ===';
    'Town'; 'Forest'; 'Beach'; 'Mine'; 'Winter'; 'Glacier'; 'Desert'; 'Volcano';
 '=== Fantasy World ===';   
    'Enchanted Forest'; 'Ancient'; 'Samurai'; 'Candy'; 'Haunted'; 'Hell'; 'Heaven';
 '=== Tech World ===';
    'Ice Tech'; 'Tech City'; 'Dark Tech'; 'Steampunk'; 'Alien Lab'; 'Alien Forest'; 'Glitch'; "Hacker Portal";
 '=== Ocean World ===';
    'Axolotl Ocean'; 'Axolotl Deep Ocean'; 'Axolotl Cave';
 '=== Pixel World ===';
 'Pixel Forest'; 'Pixel Kyoto'; 'Pixel Alps'; 'Pixel Vault';
}



local Chests = {
'All';
-- Spawn
    "Magma Chest",
    -- Fantasy
    "Enchanted Chest", "Hell Chest", "Haunted Chest", "Angel Chest", "Grand Heaven Chest",
    -- Tech
    "Giant Tech Chest"; "Giant Steampunk Chest"; "Giant Alien Chest"; "Giant Hacker Chest";
    -- exolot
   "Giant Ocean Chest";
   --Pixel
   "Giant Pixel Chest";
}


workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "buy egg")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "join coin")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "farm coin")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "claim orbs")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "change pet target")    
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "get trade")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "add trade pet")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "remove trade pet")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "convert to dark matter")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "redeem dark matter pet")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "redeem rank rewards")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "redeem vip rewards")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "toggle setting")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "activate boost")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "use golden machine")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "use rainbow machine")

-------------------------------
--Farms a coin. It seems to work. That's fun
function FarmCoin(CoinID, PetID)
game.workspace['__THINGS']['__REMOTES']["join coin"]:InvokeServer({[1] = CoinID, [2] = {[1] = PetID}})
game.workspace['__THINGS']['__REMOTES']["farm coin"]:FireServer({[1] = CoinID, [2] = PetID})
end

function GetMyPets()
local returntable = {}
for i,v in pairs(GameLibrary.Save.Get().Pets) do
   if v.e then 
       table.insert(returntable, v.uid)
   end
end
return returntable
end

-------------------------------

--returns all coins within the given area (area must be a table of conent)    
--LISTED
function GetCoins(area, exclude)
exclude = exclude or {}
local Areas = (IMightKillMyselfCauseOfThis)
local returntable = {}
local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
for i,v in pairs(ListCoins) do
if _G.mapafunc == 'All' or table.find(Areas[_G.mapafunc], v.a) and not table.find(exclude ,v.a) then
    local shit = v
    shit["index"] = i
    table.insert(returntable, shit)
 end
end
return returntable
end

--Sexy man ( wYn#0001 ) made this for me. It works, not sure how, it does.
function GetCoinTable(area)
local CoinTable = GetCoins(area)
function getKeysSortedByValue(tbl, sortFunction)
local keys = {}
for key in pairs(tbl) do
    table.insert(keys, key)
end
table.sort(
    keys,
    function(a, b)
        return sortFunction(tbl[a].h, tbl[b].h)
    end
)
return keys
end
local sortedKeys = getKeysSortedByValue(CoinTable, function(a, b) return a > b end)
local newCoinTable = {}

for i,v in pairs(sortedKeys) do
table.insert(newCoinTable, CoinTable[v])
end

return newCoinTable
end


local FirstPage = win:Tab("Farming")
local SecondPage = win:Tab("Auto Collect \nAuto Potion")
local ThirdPage = win:Tab("Auto Egg")
local FourthPage = win:Tab("Pet")
local FifthPage = win:Tab("Misc")

FirstPage:Label("== Farming Section ==")

local MethodList = {'Normal', 'Multi Target', 'Highest Value'}
FirstPage:Dropdown("Select Method", MethodList , function(methodfunc)
if methodfunc then
_G.methodfunc = methodfunc
end
print("Selected method: ", methodfunc)
end)

------------

FirstPage:Dropdown("Select location", AreaListLoc, function(mapafunc)
if mapafunc then
_G.mapafunc = mapafunc
end
print("Selected area: ", mapafunc)
end)

-------------------------------------------------------------------------------------------------

--Not sure exactly why I did this
local AreaWorldTable = {}
for _, v in pairs(game:GetService("ReplicatedStorage").Game.Coins:GetChildren()) do
for _, b in pairs(v:GetChildren()) do
table.insert(AreaWorldTable, b.Name)
end
table.insert(AreaWorldTable, v.Name)
end

--Returns all the currently alive chests in the game  the same was getcoins does
function AllChests()
local returntable = {}
local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
for i,v in pairs(ListCoins) do
local shit = v
shit.index = i
for aa,bb in pairs(AreaWorldTable) do
    if string.find(v.n, bb) or  string.find(v.n, "Giant") then
        local thing = string.gsub(v.n, bb.." ", "")
        if table.find(Chests, thing) then
            shit.n = thing
            table.insert(returntable, shit)
        end
    end
end
end
return returntable
end

-------------------------

FirstPage:Toggle("Enable Automated Farm", false, function(farmingtogglefunc)
local CurrentFarmingPets = {}
if farmingtogglefunc == true then
_G.FarmingToggle = true
elseif farmingtogglefunc == false or destroygui then
_G.FarmingToggle = false
end

local CurrentFarmingPets = {}--skidded from https://v3rmillion.net/showthread.php?tid=1137512
while task.wait() and _G.FarmingToggle do
    local pethingy = GetMyPets()
    

     if _G.methodfunc == 'Normal' then
        
    local cointhiny = GetCoins(_G.mapafunc)
    for i = 1, #cointhiny do
         if _G.FarmingToggle and game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) then
            for _, bb in pairs(pethingy) do
                 if _G.FarmingToggle and game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) then
                        wait(0.1)
                    spawn(function()
                        FarmCoin(cointhiny[i].index, bb)
                    end)
                end
            end
            repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) or not _G.FarmingToggle or _G.methodfunc ~= 'Normal'
        end
    end

elseif _G.methodfunc == 'Highest Value' then
        local cointhiny = GetCoinTable(_G.mapafunc)
        for a,b in pairs(pethingy) do
        spawn(function() wait() FarmCoin(cointhiny[1].index, b) end)
    end
    repeat rs:wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[1].index) or #game:GetService("Workspace")["__THINGS"].Coins[cointhiny[1].index].Pets:GetChildren() == 0
    

    elseif _G.methodfunc == 'Multi Target' then
        local cointhiny = GetCoins(_G.mapafunc)
        for i = 1, #cointhiny do
        if i%#pethingy == #pethingy-1 then wait() end
        if not CurrentFarmingPets[pethingy[i%#pethingy+1]] or CurrentFarmingPets[pethingy[i%#pethingy+1]] == nil then
            spawn(function()
                CurrentFarmingPets[pethingy[i%#pethingy+1]] = 'Farming'
                FarmCoin(cointhiny[i].index, pethingy[i%#pethingy+1])
                repeat rs:wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) or #game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index).Pets:GetChildren() == 0
                CurrentFarmingPets[pethingy[i%#pethingy+1]] = nil
            end)
        end
    end

    end
end
end)

---------------
FirstPage:Toggle("Auto Collect Gems / Coins", false, function(autocollecting)

if autocollecting == true then
_G.CollectOrbs = true
elseif autocollecting == false or destroygui then
_G.CollectOrbs = false
end

function CollectOrbs()
local ohTable1 = {[1] = {}}
for i,v in pairs(game.workspace['__THINGS'].Orbs:GetChildren()) do
ohTable1[1][i] = v.Name
end
game.workspace['__THINGS']['__REMOTES']["claim orbs"]:FireServer(ohTable1)
end

while wait() and _G.CollectOrbs do
pcall(function() CollectOrbs() end)
end
end)

FirstPage:Toggle("Auto Collect Lootbag", false, function(lootbag)
if lootbag == true then
_G.Toggle = true -- turns it on or off, true means the scripts on false means its off u can change it if u want
elseif lootbag == false then
_G.Toggle = false
end

while _G.Toggle do wait()
for i,v in pairs(game:GetService("Workspace")["__THINGS"].Lootbags:GetChildren()) do
v.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
end
end
end)

local ItemToFarmList = {'Magma Chest', 'Enchanted Chest', 'Hell Chest', 'Haunted Chest', 'Angel Chest', 'Grand Heaven Chest','Giant Tech Chest', 'Giant Steampunk Chest', 'Giant Alien Chest', 'Giant Hacker Chest', 'Giant Ocean Chest', 'Giant Pixel Chest' }

FirstPage:Dropdown("Select Chest", ItemToFarmList, function(itemtofarmfunc)
if itemtofarmfunc then
_G.itemtofarmfunc = itemtofarmfunc
end
print("Selected item: ", itemtofarmfunc)
end)

FirstPage:Toggle("Enable Chest Farm" , false , function(chest)
local CurrentFarmingPets = {}
if chest == true then
_G.ChestToggle = true
elseif chest == false or destroygui then
_G.ChestToggle = false
end

local CurrentFarmingPets = {}--skidded from https://v3rmillion.net/showthread.php?tid=1137512
while task.wait() and _G.ChestToggle do
    local pethingy = GetMyPets()

for i,v in pairs(AllChests()) do
            if (v.n == _G.itemtofarmfunc)then
                local starttick = tick()
                for a, b in pairs(pethingy) do
                    coroutine.wrap(function()
                        FarmCoin(v.index, b)
                    end)()
                end
                repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) or #game:GetService("Workspace")["__THINGS"].Coins[v.index].Pets:GetChildren() == 0 or not _G.FarmingToggle or _G.methodfunc ~= 'Chest'
                warn(v.n .. " has been broken in", tick()-starttick)
            end
end
end
    end)

SecondPage:Label("== Auto Collect Section ==")
---------------
SecondPage:Toggle("Auto Claim Gifts", nil, function(gift)
if gift == true then
_G.Gift = true
elseif gift == false then
_G.Gift = false
end
while task.wait(0.1) and _G.Gift do
local gift = {
[1] = {
   
[1] = 1
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 2
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 3
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 4
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 5
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 6
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 7
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 8
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 9
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 10
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 11
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
local gift = {
[1] = {
   
[1] = 12
}
}
workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(gift))
end
print("Reedem")
end)

---------------
SecondPage:Toggle("Auto collect rewards [Both VIP and Rank.]", false, function(autorewards)

if autorewards == true then
_G.AutoRewards1 = true
elseif autorewards == false then
_G.AutoRewards1 = false
end

while task.wait() and _G.AutoRewards1 do
workspace.__THINGS.__REMOTES["redeem vip rewards"]:InvokeServer({})
workspace.__THINGS.__REMOTES["redeem rank rewards"]:InvokeServer({})			
end
end)

-------------------------------------------------------------------------------------------------
SecondPage:Label("== Auto Potion Section ==")
SecondPage:Toggle("Auto use triple damage", false, function(autotripledamage)

if autotripledamage == true then
_G.TripleDamage1 = true
elseif autotripledamage == false or destroygui then
_G.TripleDamage1 = false
end

if _G.TripleDamage1 then 
if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Triple Damage") then
workspace.__THINGS.__REMOTES["activate boost"]:FireServer({[1] = "Triple Damage"})
print("Triple damage boost checked")
end
end
end)

---------------

SecondPage:Toggle("Auto use triple coins", false, function(autotriplecoins)

if autotriplecoins == true then
_G.TripleCoins1 = true
elseif autotriplecoins == false or destroygui then
_G.TripleCoins1 = false
end

if _G.TripleCoins1 then
if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Triple Coins") then
    workspace.__THINGS.__REMOTES["activate boost"]:FireServer({[1] = "Triple Coins"})
print("Triple coin boost checked")
end
end
end)


---------------

SecondPage:Toggle("Auto use Super Luck", false, function(autosuperluck)

if autosuperluck == true then
_G.SuperLucky1 = true
elseif autosuperluck == false or destroygui then
_G.SuperLucky1 = false
end

if _G.SuperLucky1 then
if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Super Lucky") then
    workspace.__THINGS.__REMOTES["activate boost"]:FireServer({[1] = "Super Lucky"})
print("Super luck boost checked")
end
end
end)
---------------

SecondPage:Toggle("Auto use Ultra Lucky", false, function(autoultraluck)

if autoultraluck == true then
_G.ULTRALucky1 = true
elseif autoultraluck == false or destroygui then
_G.ULTRALucky1 = false
end

if _G.ULTRALucky1 then
if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Ultra Lucky") then
    workspace.__THINGS.__REMOTES["activate boost"]:FireServer({[1] = "Ultra Lucky"})
print("Super luck boost checked")
end
end
end)

-------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------
local pathToScript = game.Players.LocalPlayer.PlayerScripts.Scripts.Game['Open Eggs']
local oldFunc = getsenv(pathToScript).OpenEgg

local MyEggData = {}
local littleuselesstable = {}
local GameLibrary = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
for i,v in pairs(GameLibrary.Directory.Eggs) do
local temptable = {}
temptable['Name'] = i
temptable['Currency'] = v.currency
temptable['Price'] = v.cost
table.insert(MyEggData, temptable)
end

table.sort(MyEggData, function(a, b)
return a.Price < b.Price
end)

local EggData = {}
for i,v in pairs(CurrencyOrder) do
table.insert(EggData, " ")
table.insert(EggData, "-- "..v.." --")
for a,b in pairs(MyEggData) do
if b.Currency == v then
    table.insert(EggData, b.Name)
end
end
end

-------------------------
ThirdPage:Label("== Egg Section ==")
ThirdPage:Dropdown("Select egg", EggData, function(eggor)
if eggor then
_G.Egg = eggor
end
--print("Text: ", eggor)
--print("_G.Egg: ", _G.Egg)
end)

ThirdPage:Toggle("Open Eggs", false ,function(dropegg)
shared.toggle3drop = dropegg
end)
local openeegg = eggor
game:GetService("RunService").RenderStepped:connect(function()
if shared.toggle3drop then  

local ohTable1 = {
    [1] = _G.Egg,
    [2] =_G.TripleEgg
    
}
workspace.__THINGS.__REMOTES["buy egg"]:InvokeServer(ohTable1)
wait(0.1)
end
end)

-------------------------

ThirdPage:Toggle("Remove Egg Animation",false, function(delanimation)
if delanimation == true then 
getsenv(pathToScript).OpenEgg = function() return end 
else
getsenv(pathToScript).OpenEgg = oldFunc
end 
end)
-------------------------

ThirdPage:Toggle("Use Triple Eggs (Gamepass)", false, function(triplegamepass)

if triplegamepass == true then
_G.TripleEgg = true
elseif triplegamepass == false or destroygui then
_G.TripleEgg = false
end
end)

_G.TripleEgg = false
-------------------------

------------------------------------------------------------------------------------------------

--Pets


local GameLibrary = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
local Name = {}
local Currency = {}
local PetNamesTable = {}
local Rarity = {}

for i,v in pairs(GameLibrary.Directory.Pets) do
table.insert(PetNamesTable,"-- " ..v.name.. "--")
end

--auto gold/rainbow
FourthPage:Label("== Auto Golden or Rainbow Section ==" )
FourthPage:Slider("Select Pet Amount", 0, 6, 1,function(countcombinefunc)
if countcombinefunc then
_G.CountCombineFunc1 = countcombinefunc
end
--print("Selected Combine Count: ", _G.CountCombineFunc1)
end)

------------------------------------------
FourthPage:Toggle("Auto Golden", false, function(togglegoldfunc)

if togglegoldfunc == true then
_G.ToggleGold = true
elseif togglegoldfunc == false then
_G.ToggleGold = false
end
end)


FourthPage:Toggle("Auto Rainbow", false, function(toggleraibowfunc)

if toggleraibowfunc == true then
_G.ToggleRainbow = true
elseif toggleraibowfunc == false then
_G.ToggleRainbow = false
end
end)

---------------------------------------

--pets2:addToggle("Allow Mythical", false, function(allowmythicalfunc)

--_G.AllowMythicals = false

--if allowmythicalfunc == true then
--    _G.AllowMythicals = true
--elseif allowmythicalfunc == false then
--    _G.AllowMythicals = false
--end
--end)

---------------------------------------

FourthPage:Toggle("Enable Automated Golden or Rainbow", false, function(autocombinefunc)

if autocombinefunc == true then
_G.AutoCom = true
elseif autocombinefunc == false then
_G.AutoCom = false
end

while wait() and _G.AutoCom do
for i, v in pairs(GetPets()) do
if #v >= _G.CountCombineFunc1 and _G.AutoCom then
    if string.find(i, "Normal") and _G.AutoCom and _G.ToggleGold then
        local Args = {}
        for eeeee = 1, _G.CountCombineFunc1 do
            Args[#Args+1] = v[#Args+1]
        end
        Library.Network.Invoke("use golden machine", Args)

    elseif string.find(i, "Gold") and _G.AutoCom and _G.ToggleRainbow then
        local Args = {}
        for eeeee = 1, _G.CountCombineFunc1 do
            Args[#Args+1] = v[#Args+1]
        end
        Library.Network.Invoke("use rainbow machine", Args)
    end
end
end
end
end)

--Dark Matter
FourthPage:Label("== Auto Dark Matter ==")
FourthPage:Button("Remaining Time Check", function()
local PetList = {}
for i,v in pairs(GameLibrary.Directory.Pets) do
PetList[i] = v.name
end

local returnstring = ""
for i,v in pairs(GameLibrary.Save.Get().DarkMatterQueue) do
    local timeleft = 'Ready.'
    if math.floor(v.readyTime - os.time()) > 0 then
        timeleft = SecondsToClock(math.floor(v.readyTime - os.time()))
    end
    local stringthing = PetList[v.petId] .." going to be ready in: ".. timeleft
    returnstring = returnstring .. stringthing .. "\n"
end
require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Message"]).New(returnstring)
end)


-------------------------------

FourthPage:Dropdown("Select Pet to Dark Matter", PetNamesTable, function(value)

if value then
_G.NameOfPet = value
end
print("dark matter enabled", value)
end)

-------------------------------

FourthPage:Slider("Select Amount of Pets to Dark Matter", 0, 6,1, function(countdarkmatterfunc)
if countdarkmatterfunc then
_G.CountDarkMatterFunc1 = countdarkmatterfunc
end
--print("Selected Dark Matter Count: ", _G.CountDarkMatterFunc1)
end)


-------------------------------

FourthPage:Toggle("Enable Auto-Making Dark Matter Pets", false, function(automakedarkmatters)

if automakedarkmatters == true then
_G.AutoMakeDarkMatter = true
elseif automakedarkmatters == false then
_G.AutoMakeDarkMatter = false
end


while task.wait() and _G.AutoMakeDarkMatter do
local Save = GameLibrary.Save.Get()
local Slots = Save.DarkMatterSlots
local Queued = 0
for a, b in pairs(Save.DarkMatterQueue) do
    Queued = Queued + 1 
end
local Slots = Slots - Queued
for count = 1, Slots do
    if Slots - count >= 0 then
        local PetList = {}
        for i,v in pairs(GameLibrary.Save.Get().Pets) do
            if #PetList < _G.CountDarkMatterFunc1 and v.r and IDToName[v.id] == _G.NameOfPet then
                table.insert(PetList, v.uid)
            end
        end
        if #PetList >= _G.CountDarkMatterFunc1 then
            local tablething = {[1] = {}}
            for eeek = 1, _G.CountDarkMatterFunc1 do
                tablething[1][eeek] = PetList[eeek]
            end
            workspace.__THINGS.__REMOTES["convert to dark matter"]:InvokeServer(tablething)
        end
    end 
end
task.wait(15)
end
end)

-------------------------------
FourthPage:Toggle("Enable Auto Claiming Dark Matter Pets", false, function(autoclaimdark)

if autoclaimdark == true then
_G.AutoClaimDarkMatter = true
elseif autoclaimdark == false then
_G.AutoClaimDarkMatter = false
end

spawn(function()
while task.wait() and _G.AutoClaimDarkMatter do
for i,v in pairs(GameLibrary.Save.Get().DarkMatterQueue) do
    if math.floor(v.readyTime - os.time()) < 0 then
        workspace.__THINGS.__REMOTES["redeem dark matter pet"]:InvokeServer({[1] = i})
    end
    end
task.wait(15)
end
end)
end)

FifthPage:Label("== Player Section ==")
FifthPage:Slider("Walkspeed", 16, 500, 30, function(Value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
print(Value)
end)
FifthPage:Slider("JumpPower", 35, 500, 40, function(Value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
print(Value)
end)

local InfiniteJumpEnabled;
FifthPage:Toggle("Infinite Jump", false , function(State)
InfiniteJumpEnabled = State
end)

local Player = game:GetService("Players").LocalPlayer
game:GetService("UserInputService").JumpRequest:Connect(function()
if InfiniteJumpEnabled then
 Player.Character:WaitForChild("Humanoid"):ChangeState("Jumping")
end
end)
------------------------------------------------------------------------------------------------

FifthPage:Label("== Misc Section ==")
FifthPage:Button("Open Merchant", function()
game:GetService("Players").LocalPlayer.PlayerGui.Merchant.Enabled = true
end)
FifthPage:Button("Open Bank", function()
game:GetService("Players").LocalPlayer.PlayerGui.Bank.Enabled = true
end)
FifthPage:Button("Open Golden Machine", function()
game:GetService("Players").LocalPlayer.PlayerGui.Golden.Enabled = true
end)
FifthPage:Button("Open Rainbow Machine", function()
game:GetService("Players").LocalPlayer.PlayerGui.Rainbow.Enabled = true
end)
FifthPage:Button("Open Dark Matter Machine", function()
game:GetService("Players").LocalPlayer.PlayerGui.DarkMatter.Enabled = true
end)
FifthPage:Button("Open Fuse Pets Machine", function()
game:GetService("Players").LocalPlayer.PlayerGui.FusePets.Enabled = true
end)
FifthPage:Button("Open Teleport", function()
game:GetService("Players").LocalPlayer.PlayerGui.Teleport.Enabled = true
end)

FifthPage:Button("FPS Booster", "Lag reduction", function()
game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs["Coin Rewards HUD"].Disabled = true
if game:GetService("Workspace"):FindFirstChild("__DEBRIS") then
game:GetService("Workspace")["__DEBRIS"]:Destroy()
end
print("Clicked")
end)
FifthPage:Button("Turn OFF Texture in Game \n[Good for Potato Device or AFKing.]", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/inceldom/skid/main/fps.lua'))()
print("Lag reducer activated")
end)

FifthPage:Label("== Visual Section ==")
FifthPage:Button("Give gamepasses [Some are visual.]", function(gamepasses)
shared.toggle3gamepasses = gamepasses
game:GetService("RunService").RenderStepped:connect(function()
local main = debug.getupvalues(require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library")).Save.Get)[2][game.Players.LocalPlayer].save.Gamepasses
table.insert(main,18674296)
table.insert(main,18674298)
table.insert(main,18674321)
table.insert(main,21176989)
table.insert(main,21583760)
table.insert(main,21641016)
table.insert(main,22596039)
table.insert(main,18674307)
end)
end)

FifthPage:Button("Unlock Hoverboard")
local tbl = require(game.ReplicatedStorage.Framework.Modules.Client["4 | Save"]).Get()
tbl.Hoverboards = {}
for i,v in pairs(game.ReplicatedStorage.Game.Hoverboards:GetChildren())do
table.insert(tbl.Hoverboards, v.Name)
end
getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs.Hoverboards).Update()
getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs.Hoverboards).Equip = function(board)
tbl.EquippedHoverboard = board
getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs.Hoverboards).Update()
end