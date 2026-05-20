--================ 卡密系统 ================
local Key = "91VIP778"

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KeySystem"
ScreenGui.ResetOnSpawn = false
pcall(function()
    ScreenGui.Parent = game.CoreGui
end)

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 320, 0, 180)
Frame.Position = UDim2.new(0.5, -160, 0.5, -90)
Frame.BackgroundColor3 = Color3.fromRGB(20,20,20)
Frame.Parent = ScreenGui
Frame.Active = true
Frame.Draggable = true

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0,12)
UICorner.Parent = Frame

local Stroke = Instance.new("UIStroke")
Stroke.Color = Color3.fromRGB(0,170,255)
Stroke.Thickness = 2
Stroke.Parent = Frame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1,0,0,45)
Title.BackgroundTransparency = 1
Title.Text = "🔐 皮特没啊卡密系统"
Title.TextColor3 = Color3.new(1,1,1)
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold
Title.Parent = Frame

local Box = Instance.new("TextBox")
Box.Size = UDim2.new(0.85,0,0,40)
Box.Position = UDim2.new(0.075,0,0.38,0)
Box.PlaceholderText = "请输入卡密"
Box.Text = ""
Box.TextScaled = true
Box.Font = Enum.Font.Gotham
Box.TextColor3 = Color3.new(1,1,1)
Box.BackgroundColor3 = Color3.fromRGB(35,35,35)
Box.ClearTextOnFocus = false
Box.Parent = Frame

local BoxCorner = Instance.new("UICorner")
BoxCorner.CornerRadius = UDim.new(0,8)
BoxCorner.Parent = Box

local Button = Instance.new("TextButton")
Button.Size = UDim2.new(0.85,0,0,40)
Button.Position = UDim2.new(0.075,0,0.68,0)
Button.Text = "验证"
Button.TextScaled = true
Button.Font = Enum.Font.GothamBold
Button.TextColor3 = Color3.new(1,1,1)
Button.BackgroundColor3 = Color3.fromRGB(0,170,255)
Button.Parent = Frame

local BtnCorner = Instance.new("UICorner")
BtnCorner.CornerRadius = UDim.new(0,8)
BtnCorner.Parent = Button

local KeyCorrect = false

Button.MouseButton1Click:Connect(function()
    if Box.Text == "91VIP778" then
        KeyCorrect = true

        game.StarterGui:SetCore("SendNotification",{
            Title = "验证成功",
            Text = "欢迎使用脚本",
            Duration = 3
        })

        ScreenGui:Destroy()
    else
        game.StarterGui:SetCore("SendNotification",{
            Title = "验证失败",
            Text = "卡密错误",
            Duration = 3
        })
    end
end)

repeat task.wait() until KeyCorrect

--================ 主脚本 ================

local BgImage = "https://raw.githubusercontent.com/21sd/ueu/refs/heads/main/Image_1779284848438_139.jpg"

local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/gycgchgyfytdttr/shenqin/refs/heads/main/ui.lua"))()

-- ================= 主题注册 =================
local Window = WindUI:CreateWindow({
    Title = "皮特没啊",
    Icon = "rbxassetid://117160048182532",
    Author = "作者:皮特没啊",
    Folder = "NightHub",
    Size = UDim2.fromOffset(520, 420),
    Transparent = true,
    Theme = "Dark",
    NewElements = false,
    OpenButton = {
        CornerRadius = UDim.new(1,0),
        Scale = 1,
        Draggable = true,
        Color = ColorSequence.new(
            Color3.fromRGB(0, 0, 139),
            Color3.fromRGB(255, 255, 255)
        )
    },
    SideBarWidth = 150,
    ScrollBarEnabled = false,
    Background = BgImage,
    BackgroundImageTransparency = 0.55,
    User = {
        Enabled = true,
        Anonymous = false
    }
})

pcall(function()
    Window.BackgroundImage = BgImage
    Window.BackgroundImageTransparency = 0.55
end)

Window:Tag({
    Title = "皮特没啊",
    Icon = "github",
    Color = Color3.fromRGB(255, 204, 0),
    Radius = 8,
})

Window:ToggleTransparency(true)

local TimeTag = Window:Tag({
    Title = "00:00",
    Color = Color3.fromHex("#000000")
})

local hue = 0

task.spawn(function()
    while true do
        local now = os.date("*t")
        local hours = string.format("%02d", now.hour)
        local minutes = string.format("%02d", now.min)

        hue = (hue + 0.01) % 1
        local rainbowColor = Color3.fromHSV(hue, 1, 1)

        TimeTag:SetTitle(hours .. ":" .. minutes)
        TimeTag:SetColor(rainbowColor)

        task.wait(0.06)
    end
end)

-- ================= 公告 =================
local TabAnnounce = Window:Tab({
    Title = "公告",
    Icon = "megaphone",
    Locked = false,
})

TabAnnounce:Button({
    Title = "📋 复制91VIP778",
    Callback = function()
        local announcement = [[
91VIP778
]]

        pcall(function()
            setclipboard(announcement)
        end)

        game.StarterGui:SetCore("SendNotification",{
            Title = "公告",
            Text = "已复制到剪贴板",
            Duration = 3
        })
    end
})

-- ================= 通用 =================
local TabCommon = Window:Tab({
    Title = "通用",
    Icon = "list",
    Locked = false,
})

TabCommon:Button({
    Title = "飞行",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/pmKTOz36/raw"))()

        game.StarterGui:SetCore("SendNotification",{
            Title = "通用",
            Text = "飞行已开启",
            Duration = 3
        })
    end
})

TabCommon:Slider({
    Title = "跳跃",
    Value = {
        Min = 0,
        Max = 1000,
        Default = 50,
    },
    Step = 1,
    Callback = function(value)
        local char = game.Players.LocalPlayer.Character
        if char and char:FindFirstChild("Humanoid") then
            char.Humanoid.JumpPower = value
        end
    end
})

TabCommon:Slider({
    Title = "超广角",
    Value = {
        Min = 70,
        Max = 120,
        Default = 70,
    },
    Increment = 1,
    Callback = function(v)
        workspace.CurrentCamera.FieldOfView = v
    end
})

TabCommon:Slider({
    Title = "速度",
    Value = {
        Min = 16,
        Max = 400,
        Default = 16,
    },
    Step = 1,
    Callback = function(value)
        local char = game.Players.LocalPlayer.Character
        if char and char:FindFirstChild("Humanoid") then
            char.Humanoid.WalkSpeed = value
        end
    end
})

--================ 彩虹边框 ================
task.wait(0.3)

local Main = Window.UIElements.Main

for _, v in ipairs(Main:GetDescendants()) do
    if v:IsA("UIStroke") and v.Name == "RainbowBorder" then
        v:Destroy()
    end
end

local RainbowStroke = Instance.new("UIStroke")
RainbowStroke.Name = "RainbowBorder"
RainbowStroke.Thickness = 3.5
RainbowStroke.Color = Color3.new(1,1,1)
RainbowStroke.LineJoinMode = Enum.LineJoinMode.Round
RainbowStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
RainbowStroke.Parent = Main

local Gradient = Instance.new("UIGradient")
Gradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255,0,0)),
    ColorSequenceKeypoint.new(0.16, Color3.fromRGB(255,255,0)),
    ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0,255,0)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0,255,255)),
    ColorSequenceKeypoint.new(0.66, Color3.fromRGB(0,0,255)),
    ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255,0,255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255,0,0))
})
Gradient.Parent = RainbowStroke

local RunService = game:GetService("RunService")
local angle = 0

RunService.RenderStepped:Connect(function(dt)
    angle = (angle + dt * 150) % 360
    Gradient.Rotation = angle
end)

RainbowStroke.Enabled = true

local Corner = Main:FindFirstChildOfClass("UICorner")

if not Corner then
    Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0,12)
    Corner.Parent = Main
end