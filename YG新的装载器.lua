local shit=function()pcall(function()game.Players.LocalPlayer:Kick()end)pcall(game.Shutdown,game)end

local fuck=function()return"a"end
hookfunction(fuck,function()return"b"end)
if not isfunctionhooked then shit()return end
if not isfunctionhooked(fuck)then shit()return end

local bitch=game.HttpGet
hookfunction(bitch,function()end)
if not isfunctionhooked(bitch)then shit()return end
restorefunction(bitch)
if isfunctionhooked(bitch)then shit()return end

local cunt=request or http_request or(syn and syn.request)or(fluxus and fluxus.request)

spawn(function()
    while task.wait(0.5)do
        pcall(function()
            if isfunctionhooked(game.HttpGet)then shit()end
            if isfunctionhooked(game.HttpPost)then shit()end
            if isfunctionhooked(tostring)then shit()end
            if isfunctionhooked(setclipboard)then shit()end
            if cunt and isfunctionhooked(cunt)then shit()end
            if isfolder("HttpGetFolder")or isfolder("WebhookFolder")or isfolder("RequestFolder")then shit()end
        end)
    end
end)

for _,dick in pairs({"rconsoleprint","rconsolewarn","rconsoleinfo","rconsoleerr","rconsoletitle","clonefunction"})do
    getgenv()[dick]=nil
end

local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Potato5466794/New/refs/heads/main/Library%E2%80%93ZeroXNOL.lua"))()


WindUI:Notify({
    Title = "YG SCRIPT",
    Content = "加载中，请勿多次点击！",
    Duration = 4
})


function gradient(text, startColor, endColor)
    local result = ""
    local chars = {}
    
    for uchar in text:gmatch("[%z\1-\127\194-\244][\128-\191]*") do
        table.insert(chars, uchar)
    end
    
    local length = #chars
    
    for i = 1, length do
        local t = (i - 1) / math.max(length - 1, 1)
        local r = startColor.R + (endColor.R - startColor.R) * t
        local g = startColor.G + (endColor.G - startColor.G) * t
        local b = startColor.B + (endColor.B - startColor.B) * t
        
        result = result .. string.format('<font color="rgb(%d,%d,%d)">%s</font>', 
            math.floor(r * 255), 
            math.floor(g * 255), 
            math.floor(b * 255), 
            chars[i])
    end
    
    return result
end

local myDarkTheme = {
    Name = "DarkPurpleRed",
    
    Accent = Color3.fromHex("#4A235A"),
    Dialog = Color3.fromHex("#2C003E"),
    Outline = Color3.fromHex("#FFFFFF"),
    Text = Color3.fromHex("#FFFFFF"),
    Placeholder = Color3.fromHex("#8B5A8C"),
    Background = Color3.fromHex("#0A0A0F"),
    Button = Color3.fromHex("#641E16"),
    Icon = Color3.fromHex("#D4AF37"),
    Toggle = Color3.fromHex("#8B0000"),
    Slider = Color3.fromHex("#8B0000"),
    Checkbox = Color3.fromHex("#4A235A"),
    
    Hover = Color3.fromHex("#8B5A8C"),
    
    WindowBackground = Color3.fromHex("#1A0A1A"),
    
    WindowTopbarTitle = Color3.fromHex("#FFFFFF"),
    WindowTopbarAuthor = Color3.fromHex("#D4AF37"),
    WindowTopbarIcon = Color3.fromHex("#D4AF37"),
    WindowTopbarButtonIcon = Color3.fromHex("#FFFFFF"),
    
    Tooltip = Color3.fromHex("#4A235A"),
    TooltipText = Color3.fromHex("#FFFFFF"),
    TooltipSecondary = Color3.fromHex("#8B0000"),
    TooltipSecondaryText = Color3.fromHex("#FFFFFF"),
}

WindUI:AddTheme(myDarkTheme)

local Window = WindUI:CreateWindow({
    Title = gradient("YG SCRIPT", Color3.fromHex("#8B0000"), Color3.fromHex("#4A235A")), 
    Author = gradient("YG付费", Color3.fromHex("#FFD700"), Color3.fromHex("#FFD700")),
    IconThemed = true,
    Folder = "加载器",
    Size = UDim2.fromOffset(150, 100),
    Transparent = getgenv().TransparencyEnabled,
    Theme = "DarkPurpleRed",
    Resizable = true,
    SideBarWidth = 150,
    BackgroundImageTransparency = 0.8,
    HideSearchBar = true,
    ScrollBarEnabled = true,
    Acrylic = false,
    User = {
        Enabled = true,
        Anonymous = false,
        Callback = function()
            local themes = {"DarkPurpleRed", "Dark", "Crimson", "Violet", "Midnight"}
            if not currentThemeIndex then
                currentThemeIndex = 1
            else
                currentThemeIndex = currentThemeIndex + 1
                if currentThemeIndex > #themes then
                    currentThemeIndex = 1
                end
            end
            
            local newTheme = themes[currentThemeIndex]
            WindUI:SetTheme(newTheme)
            
            WindUI:Notify({
                Title = "主题已切换",
                Content = "切换到 " .. newTheme .. " 主题",
                Duration = 2,
                Icon = "palette",
                IconThemed = true
            })
        end,
    },
    Background = "",  -- 改成你自己的图片ID或URL
    BackgroundImageTransparency = 0.8,           -- 背景图透明度（0=不透明，1=完全透明）
})
    
Window:EditOpenButton({
    Title = "YG SCRIPT",
    Icon = "monitor",
    CornerRadius = UDim.new(3,20),
    StrokeThickness = 2,
    Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromHex("FF0000")),
        ColorSequenceKeypoint.new(0.16, Color3.fromHex("FF7F00")),
        ColorSequenceKeypoint.new(0.33, Color3.fromHex("FFFF00")),
        ColorSequenceKeypoint.new(0.5, Color3.fromHex("00FF00")),
        ColorSequenceKeypoint.new(0.66, Color3.fromHex("0000FF")),
        ColorSequenceKeypoint.new(0.83, Color3.fromHex("4B0082")),
        ColorSequenceKeypoint.new(1, Color3.fromHex("9400D3"))
    }),
    Draggable = true,
})

Window:Tag({
    Title = "YG-PRO",----标签名
    Radius = 5,
    Color = Color3.fromHex("#FFB7C5"),
})

Window:Tag({
    Title = "作者：YG",----标签名
    Radius = 5,
    Color = Color3.fromHex("#FFB7C5"),
})

Window:Tag({
    Title = "YG团队",----标签名
    Radius = 5,
    Color = Color3.fromHex("#FFB7C5"),
})

Window:SetToggleKey(Enum.KeyCode.F)

local MainSection = Window:Section({ 
    Title = "服务器列表",
    Icon = "star",
    IconThemed = true
})

local MainTab = MainSection:Tab({ 
    Title = "通缉", ----服务器名称或者类型
    Icon = "star",
    IconColor = Color3.fromHex("#D4AF37")
})

MainTab:Button({
    Title = "通缉",---服务器名称
    Icon = "play",
    Color = "Red",
    Callback = function()
      ---  ↓↓↓↓↓↓↓ 你的源代码放进去(不用混淆)


destroyUI()
         
       
    end
})