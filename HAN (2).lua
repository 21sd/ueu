-- 背景图片链接（你指定的那张）
local BgImage = "https://raw.githubusercontent.com/21sd/-/refs/heads/main/image_download_1777804350158.jpg"

local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/gycgchgyfytdttr/shenqin/refs/heads/main/ui.lua"))()

-- ================= 主题注册 =================
local Window = WindUI:CreateWindow({
    Title = "街头生活",
    Icon = "rbxassetid://117160048182532",
    Author = "作者:小寒",
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
    pcall(function()
        Window.BackgroundImage = BgImage
        Window.BackgroundImageTransparency = 0.55
    end)
end)
Window:Tag({
    Title = "街头生活",
    Icon = "github",
    Color = Color3.fromRGB(255, 204, 0), -- ⭐柔和黄色（推荐）
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
    Icon = "megaphone",      -- 图标，可选：info, bell, book 等
    Locked = false,
})

TabAnnounce:Button({
    Title = "📋 复制主群",
    Callback = function()
        local announcement = [[
1067027551
]]

        pcall(function()
            setclipboard(announcement)
            Notify("公告", "公告已复制到剪贴板！", 2, "success")
        end)
    end
})

TabAnnounce:Button({
    Title = "📋 复制SL脚本解卡群",
    Callback = function()
        local announcement = [[
1075832388
]]

        pcall(function()
            setclipboard(announcement)
            Notify("公告", "公告已复制到剪贴板！", 2, "success")
        end)
    end
})

-- ================= 通用 =================
local TabCommon = Window:Tab({
    Title = "通用",
    Icon = "list",          -- 图标，可选：home, star, user, settings, etc.
    Locked = false,
})

-- 示例：在此标签页下添加一个按钮
TabCommon:Button({
    Title = "传送至加油站",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(320.5409851074219, 52.29763412475586, 176.50868225097656)
        Notify("通用", "按钮被点击了！", 2, "info")
    end
})

TabCommon:Button({
    Title = "传送至战力品出售者处",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(285.2074890136719, 49.602317810058594, 297.6373596191406)
        Notify("通用", "按钮被点击了！", 2, "info")
    end
})

TabCommon:Button({
    Title = "传送至酒店",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(376.7430725097656, 70.19853973388672, 568.1727294921875)
        Notify("通用", "按钮被点击了！", 2, "info")
    end
})

TabCommon:Button({
    Title = "传送至武器店",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(27.87701416015625, 70.35568237304688, 579.1704711914062)
        Notify("通用", "按钮被点击了！", 2, "info")
    end
})

TabCommon:Button({
    Title = "传送至精练石油处",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.5304183959961, 70.22419738769531, 381.8302001953125)
        Notify("通用", "按钮被点击了！", 2, "info")
    end
})

TabCommon:Button({
    Title = "传送至珠宝店",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3.5665595531463623, 52.68049240112305, -223.068603515625)
        Notify("通用", "按钮被点击了！", 2, "info")
    end
})

TabCommon:Button({
    Title = "传送至健身房",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(127.44094848632812, 52.600406646728516, -400.7633056640625)
        Notify("通用", "按钮被点击了！", 2, "info")
    end
})

TabCommon:Button({
    Title = "传送至警察局",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(254.9548797607422, 52.35663986206055, -374.1732482910156)
        Notify("通用", "按钮被点击了！", 2, "info")
    end
})

TabCommon:Button({
    Title = "传送至黑市",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(272.7731018066406, 52.41523361206055, -692.183837890625)
        Notify("通用", "按钮被点击了！", 2, "info")
    end
})

TabCommon:Button({
    Title = "传送至酒吧",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(216.9373779296875, -85.38983154296875, 143.9501495361328)
        Notify("通用", "按钮被点击了！", 2, "info")
    end
})

TabCommon:Button({
    Title = "传送至送快递处",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(194.9468536376953, 53.04217529296875, 289.4267578125)
        Notify("通用", "按钮被点击了！", 2, "info")
    end
})

TabCommon:Button({
    Title = "传送至银行",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(544.4486083984375, -59.61056137084961, 360.64111328125)
        Notify("通用", "按钮被点击了！", 2, "info")
    end
})

TabCommon:Button({
    Title = "传送至超市",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(558.2432250976562, 52.399742126464844, 131.1881866455078)
        Notify("通用", "按钮被点击了！", 2, "info")
    end
})

TabCommon:Button({
    Title = "传送至更衣店",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(301.736083984375, 52.48017501831055, -87.26962280273438)
        Notify("通用", "按钮被点击了！", 2, "info")
    end
})

TabCommon:Button({
    Title = "传送至扫水的地方",
    Locked = false,
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(283.25640869140625, 52.37444305419922, -160.0525360107422)
        Notify("通用", "按钮被点击了！", 2, "info")
    end
})

-- 你可以继续往下面添加更多 Toggle、Dropdown、Slider 等控件
--[[
 =================== WindUI适配版·流光彩虹（稳定版） ===================
]]

task.wait(0.3)

local Main = Window.UIElements.Main
-- 1. 清理旧描边
for _, v in ipairs(Main:GetDescendants()) do
    if v:IsA("UIStroke") and v.Name == "RainbowBorder" then
        v:Destroy()
    end
end

-- 2. 创建描边
local Stroke = Instance.new("UIStroke")
Stroke.Name = "RainbowBorder"
Stroke.Thickness = 3.5
Stroke.Color = Color3.new(1, 1, 1)
Stroke.LineJoinMode = Enum.LineJoinMode.Round
Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Stroke.Parent = Main

-- 3. 渐变
local Gradient = Instance.new("UIGradient")
Gradient.Name = "RainbowGradient"
Gradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0,    Color3.fromRGB(255, 0, 0)),
    ColorSequenceKeypoint.new(0.16, Color3.fromRGB(255, 255, 0)),
    ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 0)),
    ColorSequenceKeypoint.new(0.5,  Color3.fromRGB(0, 255, 255)),
    ColorSequenceKeypoint.new(0.66, Color3.fromRGB(0, 0, 255)),
    ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 0, 255)),
    ColorSequenceKeypoint.new(1,    Color3.fromRGB(255, 0, 0))
})
Gradient.Parent = Stroke

-- 4. 动画（常驻稳定）
local RunService = game:GetService("RunService")
local currentAngle = 0
local rotSpeed = 150

RunService.RenderStepped:Connect(function(dt)
    if Stroke and Stroke.Parent then
        currentAngle = (currentAngle + dt * rotSpeed) % 360
        Gradient.Rotation = currentAngle
    end
end)

-- 5. 始终开启（WindUI不需要Visible监听）
Stroke.Enabled = true
Stroke.Transparency = 0

-- 6. 圆角补齐（防描边变形）
local Corner = Main:FindFirstChildOfClass("UICorner")
if not Corner then
    Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 12)
    Corner.Parent = Main
end