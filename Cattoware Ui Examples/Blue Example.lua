local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZlvXs/Libs/main/Cattoware%20Ui/Blue.lua"))()
local Window = Library:CreateWindow("Window", Vector2.new(492, 598), Enum.KeyCode.F1) -- You can change your UI keybind
local MainTab = Window:CreateTab("Tab")

local MainSection = MainTab:CreateSector("Left Section", "Left")

MainSection:AddButton("Button", function()
    print("Button")
end)

MainSection:AddToggle("Toggle", false, function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

MainSection:AddSlider("Slider", 1, 2, 3, 1, function() --- 1 Is the minium, 2 Is the default, 3 Is the max.
    print("Slider")
end)

MainSection:AddDropdown("Dropdown", {"1", "2", "3", "4"}, "1", false, function()
    print("Dropdown")
end)

local ColorToggle = MainSection:AddToggle("ColorPicker w / Toggle", false, function(x)
    print("Color Picker")
end)

ColorToggle:AddColorpicker(Color3.fromRGB(0, 0, 255), function(ztx)
   print("Color Picker 2")
end)

MainSection:AddTextbox("Text Box", nil, function()
    print("Text Box")
end)

local MainSection = MainTab:CreateSector("Right Section", "Right")

local ToggleBind = MainSection:AddToggle("Keybind w / Toggle", false, function()
    print("Toggle Bind")
end)

ToggleBind:AddKeybind()

local watermark = Library:CreateWatermark(" | Watermark | {fps} | ")
watermark.Visible = true

MainSection:AddToggle("Toggle Watermark", false, function(x)
    watermark.Visible = x
end)

-- MainTab:CreateConfigSystem("right") This is the Config System, u can add it if u want.
