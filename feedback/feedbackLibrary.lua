local u = loadstring(game:HttpGet("https://raw.githubusercontent.com/idonthaveoneatm/lua/normal/utilities.lua"))()

if game.CoreGui:FindFirstChild("Majestic-UI") then
    game.CoreGui['Majestic-UI']:Destroy()
end

local function mainView()
    local MajesticUI = u:c("ScreenGui",{
        Name = "Majestic-UI" ,
        Parent = game.CoreGui ,
        DisplayOrder = 999 ,
    },{
        u:c("Frame",{
            Name = "Main" ,
            BackgroundColor3 = Color3.fromRGB(15, 15, 15) ,
            BackgroundTransparency = 0.100 ,
            BorderSizePixel = 0 ,
            Size = UDim2.new(1, 0, 1, 0) ,
        },{
            u:c("Frame",{
                Name = "LeftTab" ,
                BackgroundColor3 = Color3.fromRGB(17, 17, 17) ,
                BackgroundTransparency = 1.000 ,
                BorderSizePixel = 0 ,
                Size = UDim2.new(0, 250, 1, 0) ,
            },{
                u:c("Frame",{
                    Name = "TopBar" ,
                    BackgroundColor3 = Color3.fromRGB(11, 11, 11) ,
                    BorderColor3 = Color3.fromRGB(27, 42, 53) ,
                    BorderSizePixel = 0 ,
                    Size = UDim2.new(1, 0, 0, 75) ,
                },{
                    u:c("ImageLabel",{
                        Name = "Image" ,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                        BackgroundTransparency = 1.000 ,
                        Position = UDim2.new(0.0600000024, 0, 0.150000006, 0) ,
                        Size = UDim2.new(0.699999988, 0, 0.699999988, 0) ,
                        Image = "rbxassetid://13429132260" ,
                    },{
                        u:c("UIAspectRatioConstraint",{}),
                        u:c("UICorner",{
                            CornerRadius = UDim.new(0, 80) ,
                        })
                    }),
                    u:c("TextLabel",{
                        Name = "Name" ,
                        AnchorPoint = Vector2.new(1, 0.5) ,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                        BackgroundTransparency = 1.000 ,
                        Position = UDim2.new(1, 0, 0.600000024, 0) ,
                        Size = UDim2.new(0.699999988, 0, 0.300000012, 0) ,
                        Font = Enum.Font.GothamBlack ,
                        Text = game.Players.LocalPlayer.DisplayName ,
                        TextColor3 = Color3.fromRGB(255, 255, 255) ,
                        TextSize = 20.000 ,
                        TextWrapped = true ,
                        TextXAlignment = Enum.TextXAlignment.Left ,
                    },{
                        u:c("UIPadding",{})
                    }),
                    u:c("TextLabel",{
                        Name = "Place" ,
                        AnchorPoint = Vector2.new(1, 0.5) ,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                        BackgroundTransparency = 1.000 ,
                        Position = UDim2.new(1, 0, 0.300000012, 0) ,
                        Size = UDim2.new(0.699999988, 0, 0.300000012, 0) ,
                        Font = Enum.Font.GothamMedium ,
                        Text = "Universal" ,
                        TextColor3 = Color3.fromRGB(140, 140, 140) ,
                        TextSize = 15.000 ,
                        TextWrapped = true ,
                        TextXAlignment = Enum.TextXAlignment.Left ,
                    },{
                        u:c("UIPadding",{})
                    })
                }),
                u:c("Frame",{
                    Name = "TabHolder" ,
                    AnchorPoint = Vector2.new(0, 1) ,
                    BackgroundColor3 = Color3.fromRGB(17, 17, 17) ,
                    BorderSizePixel = 0 ,
                    Position = UDim2.new(0, 0, 1, 0) ,
                    Size = UDim2.new(1, 0, 1, -75) ,
                },{
                    u:c("UIListLayout",{
                        SortOrder = Enum.SortOrder.LayoutOrder ,
                    })
                })
            }),
            u:c("Frame",{
                Name = "TopBar" ,
                BackgroundColor3 = Color3.fromRGB(17, 17, 17) ,
                BorderSizePixel = 0 ,
                Position = UDim2.new(0, 250, 0, 0) ,
                Size = UDim2.new(1, -250, 0, 75) ,
            },{
                u:c("TextLabel",{
                    Name = "Settings" ,
                    AnchorPoint = Vector2.new(0, 0.5) ,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                    BackgroundTransparency = 1.000 ,
                    Position = UDim2.new(0, 30, 0.5, 0) ,
                    Size = UDim2.new(0, 180, 0, 34) ,
                    Font = Enum.Font.GothamBlack ,
                    Text = "SETTINGS" ,
                    TextColor3 = Color3.fromRGB(255, 255, 255) ,
                    TextSize = 35.000 ,
                    TextWrapped = true ,
                }),
                u:c("Frame",{
                    Name = "ExitBind" ,
                    AnchorPoint = Vector2.new(1, 0) ,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                    BackgroundTransparency = 1.000 ,
                    Position = UDim2.new(1, 0, 0, 0) ,
                    Size = UDim2.new(0, 115, 0, 75) ,
                },{
                    u:c("TextLabel",{
                        Name = "Exit" ,
                        AnchorPoint = Vector2.new(0, 0.5) ,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                        BackgroundTransparency = 1.000 ,
                        Position = UDim2.new(0.170000002, 0, 0.5, 0) ,
                        Size = UDim2.new(0.300000012, 0, 0.5, 0) ,
                        Font = Enum.Font.GothamBold ,
                        Text = "Exit" ,
                        TextColor3 = Color3.fromRGB(150, 150, 150) ,
                        TextSize = 14.000 ,
                    }),
                    u:c("TextLabel",{
                        Name = "Bind" ,
                        AnchorPoint = Vector2.new(0, 0.5) ,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                        Position = UDim2.new(0.5, 0, 0.5, 0) ,
                        Size = UDim2.new(0.349999994, 0, 0.349999994, 0) ,
                        Font = Enum.Font.GothamMedium ,
                        Text = "End" ,
                        TextColor3 = Color3.fromRGB(0, 0, 0) ,
                        TextSize = 14.000 ,
                    })
                })
            }),
            u:c("Frame",{
                Name = "ItemsHolder" ,
                AnchorPoint = Vector2.new(1, 1) ,
                BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                BackgroundTransparency = 1.000 ,
                BorderSizePixel = 0 ,
                Position = UDim2.new(1, 0, 1, 0) ,
                Size = UDim2.new(1, -250, 1, -75) ,
            },{
                u:c("Frame",{
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                    BackgroundTransparency = 1.000 ,
                    Size = UDim2.new(1, 0, 1, 0) ,
                },{
                    u:c("Frame",{
                        Name = "SubTopBar" ,
                        BackgroundColor3 = Color3.fromRGB(11, 11, 11) ,
                        BackgroundTransparency = 1.000 ,
                        BorderSizePixel = 0 ,
                        Size = UDim2.new(1, 0, 0, 50) ,
                    },{
                        u:c("Frame",{
                            Name = "CategorySelection" ,
                            BackgroundColor3 = Color3.fromRGB(16, 16, 16) ,
                            BorderSizePixel = 0 ,
                            Size = UDim2.new(0.5, 0, 1, 0) ,
                        },{
                            u:c("TextLabel",{
                                AnchorPoint = Vector2.new(0, 0.5) ,
                                BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                                BackgroundTransparency = 1.000 ,
                                BorderSizePixel = 0 ,
                                Position = UDim2.new(0, 20, 0.5, 0) ,
                                Size = UDim2.new(0, 220, 0, 34) ,
                                Font = Enum.Font.GothamBlack ,
                                Text = "CATEGORY SELECTION" ,
                                TextColor3 = Color3.fromRGB(255, 255, 255) ,
                                TextSize = 20.000 ,
                                TextXAlignment = Enum.TextXAlignment.Left ,
                            })
                        }),
                        u:c("Frame",{
                            Name = "SubCategoryName" ,
                            AnchorPoint = Vector2.new(1, 0) ,
                            BackgroundColor3 = Color3.fromRGB(16, 16, 16) ,
                            BorderSizePixel = 0 ,
                            Position = UDim2.new(1, 0, 0, 0) ,
                            Size = UDim2.new(0.5, 0, 1, 0) ,
                        },{
                            u:c("TextLabel",{
                                AnchorPoint = Vector2.new(0, 0.5) ,
                                BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                                BackgroundTransparency = 1.000 ,
                                BorderSizePixel = 0 ,
                                Position = UDim2.new(0, 20, 0.5, 0) ,
                                Size = UDim2.new(0, 220, 0, 34) ,
                                ZIndex = 5 ,
                                Font = Enum.Font.GothamBlack ,
                                Text = "AIMBOT" ,
                                TextColor3 = Color3.fromRGB(255, 255, 255) ,
                                TextSize = 20.000 ,
                                TextXAlignment = Enum.TextXAlignment.Left ,
                            })
                        })
                    }),
                    u:c("Frame",{
                        Name = "CategoryChoices" ,
                        AnchorPoint = Vector2.new(0, 1) ,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                        BackgroundTransparency = 1.000 ,
                        BorderSizePixel = 0 ,
                        Position = UDim2.new(0.0250000004, 0, 0.975000024, 0) ,
                        Size = UDim2.new(0.449999988, 0, 0.949999988, -50) ,
                    },{
                        u:c("UIListLayout",{
                            HorizontalAlignment = Enum.HorizontalAlignment.Center ,
                            SortOrder = Enum.SortOrder.LayoutOrder ,
                        }),
                        u:c("Frame",{
                            BackgroundColor3 = Color3.fromRGB(0, 0, 0) ,
                            BackgroundTransparency = 0.500 ,
                            BorderSizePixel = 0 ,
                            Size = UDim2.new(1, 0, 0.100000001, 0) ,
                        },{
                            u:c("Frame",{
                                BackgroundColor3 = Color3.fromRGB(0, 0, 0) ,
                                BackgroundTransparency = 0.350 ,
                                BorderSizePixel = 0 ,
                                Size = UDim2.new(1, 0, 0.100000001, 0) ,
                            })
                        })
                    }),
                    u:c("Frame",{
                        Name = "ItemsSelection" ,
                        AnchorPoint = Vector2.new(1, 1) ,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                        BackgroundTransparency = 1.000 ,
                        BorderSizePixel = 0 ,
                        Position = UDim2.new(0.975000024, 0, 0.975000024, 0) ,
                        Size = UDim2.new(0.449999988, 0, 0.949999988, -50) ,
                    }),
                    u:c("Frame",{
                        Name = "SemiInvisHelper" ,
                        BackgroundColor3 = Color3.fromRGB(0, 0, 0) ,
                        BackgroundTransparency = 0.700 ,
                        BorderSizePixel = 0 ,
                        Position = UDim2.new(0.5, 0, 0, 0) ,
                        Size = UDim2.new(0.5, 0, 1, 0)
                    })
                })
            })
        })
    })
end

--local majesticUI = mainView()
--local tabHolder = majesticUI:FindFirstChild("TabHolder",true)


local function createFolder() --The thing labelled character
    local Folder = u:c("Frame",{
        Name = "HolderInactive" ,
        Parent = tabHolder,
        BackgroundColor3 = Color3.fromRGB(13, 13, 13) ,
        BorderSizePixel = 0 ,
        ClipsDescendants = true ,
        LayoutOrder = 1 ,
        Size = UDim2.new(1, 0, 0, 175) ,
    },{
        u:c("TextLabel",{
            Name = "TabName" ,
            BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
            BackgroundTransparency = 1.000 ,
            Position = UDim2.new(0.25, 0, 0, 12) ,
            Size = UDim2.new(0, 125, 0, 25) ,
            Font = Enum.Font.GothamBold ,
            Text = "Character" ,
            TextColor3 = Color3.fromRGB(150, 150, 150) ,
            TextSize = 14.000 ,
            TextXAlignment = Enum.TextXAlignment.Left ,
        },{
            u:c("UIPadding",{})
        }),
        u:c("ImageLabel",{
            Name = "Chevron" ,
            BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
            BackgroundTransparency = 1.000 ,
            Position = UDim2.new(0.875, 0, 0, 16) ,
            Size = UDim2.new(0, 17, 0, 17) ,
            Image = "rbxassetid://12693009776" ,
            ImageColor3 = Color3.fromRGB(150, 150, 150) ,
        }),
        u:c("ImageLabel",{
            Name = "Icon" ,
            BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
            BackgroundTransparency = 1.000 ,
            Position = UDim2.new(0.125, 0, 0, 15) ,
            Size = UDim2.new(0, 20, 0, 20) ,
            Image = "rbxassetid://13434744381" ,
            ImageColor3 = Color3.fromRGB(150, 150, 150) ,
        }),
        u:c("TextButton",{
            Name = "HitBox" ,
            BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
            BackgroundTransparency = 1.000 ,
            Size = UDim2.new(1, 0, 0, 50) ,
            Font = Enum.Font.SourceSans ,
            TextColor3 = Color3.fromRGB(0, 0, 0) ,
            TextSize = 14.000 ,
            TextTransparency = 1.000 ,
        }),
        u:c("Frame",{
            Name = "SectionHolder" ,
            AnchorPoint = Vector2.new(0, 1) ,
            BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
            BackgroundTransparency = 1.000 ,
            Position = UDim2.new(0, 0, 1, 0) ,
            Size = UDim2.new(1, 0, 1, -50) ,
        },{
            u:c("UIListLayout",{
                SortOrder = Enum.SortOrder.LayoutOrder
            })
        })
    })
end

--local sectionHolder = majesticUI:FindFirstChild("SectionHolder",true)

local function createSection()
end

local a = {}

function a:createView()
    local majesticUI = u:c("ScreenGui",{
        Name = "Majestic-UI" ,
        Parent = game.CoreGui ,
        DisplayOrder = 999 ,
    },{
        u:c("Frame",{
            Name = "Main" ,
            BackgroundColor3 = Color3.fromRGB(15, 15, 15) ,
            BackgroundTransparency = 0.100 ,
            BorderSizePixel = 0 ,
            Size = UDim2.new(1, 0, 1, 0) ,
        },{
            u:c("Frame",{
                Name = "LeftTab" ,
                BackgroundColor3 = Color3.fromRGB(17, 17, 17) ,
                BackgroundTransparency = 1.000 ,
                BorderSizePixel = 0 ,
                Size = UDim2.new(0, 250, 1, 0) ,
            },{
                u:c("Frame",{
                    Name = "TopBar" ,
                    BackgroundColor3 = Color3.fromRGB(11, 11, 11) ,
                    BorderColor3 = Color3.fromRGB(27, 42, 53) ,
                    BorderSizePixel = 0 ,
                    Size = UDim2.new(1, 0, 0, 75) ,
                },{
                    u:c("ImageLabel",{
                        Name = "Image" ,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                        BackgroundTransparency = 1.000 ,
                        Position = UDim2.new(0.0600000024, 0, 0.150000006, 0) ,
                        Size = UDim2.new(0.699999988, 0, 0.699999988, 0) ,
                        Image = "rbxassetid://13429132260" ,
                    },{
                        u:c("UIAspectRatioConstraint",{}),
                        u:c("UICorner",{
                            CornerRadius = UDim.new(0, 80) ,
                        })
                    }),
                    u:c("TextLabel",{
                        Name = "Name" ,
                        AnchorPoint = Vector2.new(1, 0.5) ,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                        BackgroundTransparency = 1.000 ,
                        Position = UDim2.new(1, 0, 0.600000024, 0) ,
                        Size = UDim2.new(0.699999988, 0, 0.300000012, 0) ,
                        Font = Enum.Font.GothamBlack ,
                        Text = game.Players.LocalPlayer.DisplayName ,
                        TextColor3 = Color3.fromRGB(255, 255, 255) ,
                        TextSize = 20.000 ,
                        TextWrapped = true ,
                        TextXAlignment = Enum.TextXAlignment.Left ,
                    },{
                        u:c("UIPadding",{})
                    }),
                    u:c("TextLabel",{
                        Name = "Place" ,
                        AnchorPoint = Vector2.new(1, 0.5) ,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                        BackgroundTransparency = 1.000 ,
                        Position = UDim2.new(1, 0, 0.300000012, 0) ,
                        Size = UDim2.new(0.699999988, 0, 0.300000012, 0) ,
                        Font = Enum.Font.GothamMedium ,
                        Text = "Universal" ,
                        TextColor3 = Color3.fromRGB(140, 140, 140) ,
                        TextSize = 15.000 ,
                        TextWrapped = true ,
                        TextXAlignment = Enum.TextXAlignment.Left ,
                    },{
                        u:c("UIPadding",{})
                    })
                }),
                u:c("Frame",{
                    Name = "TabHolder" ,
                    AnchorPoint = Vector2.new(0, 1) ,
                    BackgroundColor3 = Color3.fromRGB(17, 17, 17) ,
                    BorderSizePixel = 0 ,
                    Position = UDim2.new(0, 0, 1, 0) ,
                    Size = UDim2.new(1, 0, 1, -75) ,
                },{
                    u:c("UIListLayout",{
                        SortOrder = Enum.SortOrder.LayoutOrder ,
                    })
                })
            }),
            u:c("Frame",{
                Name = "TopBar" ,
                BackgroundColor3 = Color3.fromRGB(17, 17, 17) ,
                BorderSizePixel = 0 ,
                Position = UDim2.new(0, 250, 0, 0) ,
                Size = UDim2.new(1, -250, 0, 75) ,
            },{
                u:c("TextLabel",{
                    Name = "Settings" ,
                    AnchorPoint = Vector2.new(0, 0.5) ,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                    BackgroundTransparency = 1.000 ,
                    Position = UDim2.new(0, 30, 0.5, 0) ,
                    Size = UDim2.new(0, 180, 0, 34) ,
                    Font = Enum.Font.GothamBlack ,
                    Text = "SETTINGS" ,
                    TextColor3 = Color3.fromRGB(255, 255, 255) ,
                    TextSize = 35.000 ,
                    TextWrapped = true ,
                }),
                u:c("Frame",{
                    Name = "ExitBind" ,
                    AnchorPoint = Vector2.new(1, 0) ,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                    BackgroundTransparency = 1.000 ,
                    Position = UDim2.new(1, 0, 0, 0) ,
                    Size = UDim2.new(0, 115, 0, 75) ,
                },{
                    u:c("TextLabel",{
                        Name = "Exit" ,
                        AnchorPoint = Vector2.new(0, 0.5) ,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                        BackgroundTransparency = 1.000 ,
                        Position = UDim2.new(0.170000002, 0, 0.5, 0) ,
                        Size = UDim2.new(0.300000012, 0, 0.5, 0) ,
                        Font = Enum.Font.GothamBold ,
                        Text = "Exit" ,
                        TextColor3 = Color3.fromRGB(150, 150, 150) ,
                        TextSize = 14.000 ,
                    }),
                    u:c("TextLabel",{
                        Name = "Bind" ,
                        AnchorPoint = Vector2.new(0, 0.5) ,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                        Position = UDim2.new(0.5, 0, 0.5, 0) ,
                        Size = UDim2.new(0.349999994, 0, 0.349999994, 0) ,
                        Font = Enum.Font.GothamMedium ,
                        Text = "End" ,
                        TextColor3 = Color3.fromRGB(0, 0, 0) ,
                        TextSize = 14.000 ,
                    })
                })
            }),
            u:c("Frame",{
                Name = "ItemsHolder" ,
                AnchorPoint = Vector2.new(1, 1) ,
                BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                BackgroundTransparency = 1.000 ,
                BorderSizePixel = 0 ,
                Position = UDim2.new(1, 0, 1, 0) ,
                Size = UDim2.new(1, -250, 1, -75) ,
            },{
                u:c("Frame",{
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                    BackgroundTransparency = 1.000 ,
                    Size = UDim2.new(1, 0, 1, 0) ,
                },{
                    u:c("Frame",{
                        Name = "SubTopBar" ,
                        BackgroundColor3 = Color3.fromRGB(11, 11, 11) ,
                        BackgroundTransparency = 1.000 ,
                        BorderSizePixel = 0 ,
                        Size = UDim2.new(1, 0, 0, 50) ,
                    },{
                        u:c("Frame",{
                            Name = "CategorySelection" ,
                            BackgroundColor3 = Color3.fromRGB(16, 16, 16) ,
                            BorderSizePixel = 0 ,
                            Size = UDim2.new(0.5, 0, 1, 0) ,
                        },{
                            u:c("TextLabel",{
                                AnchorPoint = Vector2.new(0, 0.5) ,
                                BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                                BackgroundTransparency = 1.000 ,
                                BorderSizePixel = 0 ,
                                Position = UDim2.new(0, 20, 0.5, 0) ,
                                Size = UDim2.new(0, 220, 0, 34) ,
                                Font = Enum.Font.GothamBlack ,
                                Text = "CATEGORY SELECTION" ,
                                TextColor3 = Color3.fromRGB(255, 255, 255) ,
                                TextSize = 20.000 ,
                                TextXAlignment = Enum.TextXAlignment.Left ,
                            })
                        }),
                        u:c("Frame",{
                            Name = "SubCategoryName" ,
                            AnchorPoint = Vector2.new(1, 0) ,
                            BackgroundColor3 = Color3.fromRGB(16, 16, 16) ,
                            BorderSizePixel = 0 ,
                            Position = UDim2.new(1, 0, 0, 0) ,
                            Size = UDim2.new(0.5, 0, 1, 0) ,
                        },{
                            u:c("TextLabel",{
                                AnchorPoint = Vector2.new(0, 0.5) ,
                                BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                                BackgroundTransparency = 1.000 ,
                                BorderSizePixel = 0 ,
                                Position = UDim2.new(0, 20, 0.5, 0) ,
                                Size = UDim2.new(0, 220, 0, 34) ,
                                ZIndex = 5 ,
                                Font = Enum.Font.GothamBlack ,
                                Text = "AIMBOT" ,
                                TextColor3 = Color3.fromRGB(255, 255, 255) ,
                                TextSize = 20.000 ,
                                TextXAlignment = Enum.TextXAlignment.Left ,
                            })
                        })
                    }),
                    u:c("Frame",{
                        Name = "CategoryChoices" ,
                        AnchorPoint = Vector2.new(0, 1) ,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                        BackgroundTransparency = 1.000 ,
                        BorderSizePixel = 0 ,
                        Position = UDim2.new(0.0250000004, 0, 0.975000024, 0) ,
                        Size = UDim2.new(0.449999988, 0, 0.949999988, -50) ,
                    },{
                        u:c("UIListLayout",{
                            HorizontalAlignment = Enum.HorizontalAlignment.Center ,
                            SortOrder = Enum.SortOrder.LayoutOrder ,
                        }),
                        u:c("Frame",{
                            BackgroundColor3 = Color3.fromRGB(0, 0, 0) ,
                            BackgroundTransparency = 0.500 ,
                            BorderSizePixel = 0 ,
                            Size = UDim2.new(1, 0, 0.100000001, 0) ,
                        },{
                            u:c("Frame",{
                                BackgroundColor3 = Color3.fromRGB(0, 0, 0) ,
                                BackgroundTransparency = 0.350 ,
                                BorderSizePixel = 0 ,
                                Size = UDim2.new(1, 0, 0.100000001, 0) ,
                            })
                        })
                    }),
                    u:c("Frame",{
                        Name = "ItemsSelection" ,
                        AnchorPoint = Vector2.new(1, 1) ,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                        BackgroundTransparency = 1.000 ,
                        BorderSizePixel = 0 ,
                        Position = UDim2.new(0.975000024, 0, 0.975000024, 0) ,
                        Size = UDim2.new(0.449999988, 0, 0.949999988, -50) ,
                    }),
                    u:c("Frame",{
                        Name = "SemiInvisHelper" ,
                        BackgroundColor3 = Color3.fromRGB(0, 0, 0) ,
                        BackgroundTransparency = 0.700 ,
                        BorderSizePixel = 0 ,
                        Position = UDim2.new(0.5, 0, 0, 0) ,
                        Size = UDim2.new(0.5, 0, 1, 0)
                    })
                })
            })
        })
    })

    local b = {}
    function b:createFolder()
        local tabHolder = majesticUI:FindFirstChild("TabHolder",true)
        local Folder = u:c("Frame",{
            Name = "HolderInactive" ,
            Parent = tabHolder,
            BackgroundColor3 = Color3.fromRGB(13, 13, 13) ,
            BorderSizePixel = 0 ,
            ClipsDescendants = true ,
            LayoutOrder = 1 ,
            Size = UDim2.new(1, 0, 0, 175) ,
        },{
            u:c("TextLabel",{
                Name = "TabName" ,
                BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                BackgroundTransparency = 1.000 ,
                Position = UDim2.new(0.25, 0, 0, 12) ,
                Size = UDim2.new(0, 125, 0, 25) ,
                Font = Enum.Font.GothamBold ,
                Text = "Character" ,
                TextColor3 = Color3.fromRGB(150, 150, 150) ,
                TextSize = 14.000 ,
                TextXAlignment = Enum.TextXAlignment.Left ,
            },{
                u:c("UIPadding",{})
            }),
            u:c("ImageLabel",{
                Name = "Chevron" ,
                BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                BackgroundTransparency = 1.000 ,
                Position = UDim2.new(0.875, 0, 0, 16) ,
                Size = UDim2.new(0, 17, 0, 17) ,
                Image = "rbxassetid://12693009776" ,
                ImageColor3 = Color3.fromRGB(150, 150, 150) ,
            }),
            u:c("ImageLabel",{
                Name = "Icon" ,
                BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                BackgroundTransparency = 1.000 ,
                Position = UDim2.new(0.125, 0, 0, 15) ,
                Size = UDim2.new(0, 20, 0, 20) ,
                Image = "rbxassetid://13434744381" ,
                ImageColor3 = Color3.fromRGB(150, 150, 150) ,
            }),
            u:c("TextButton",{
                Name = "HitBox" ,
                BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                BackgroundTransparency = 1.000 ,
                Size = UDim2.new(1, 0, 0, 50) ,
                Font = Enum.Font.SourceSans ,
                TextColor3 = Color3.fromRGB(0, 0, 0) ,
                TextSize = 14.000 ,
                TextTransparency = 1.000 ,
            }),
            u:c("Frame",{
                Name = "SectionHolder" ,
                AnchorPoint = Vector2.new(0, 1) ,
                BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                BackgroundTransparency = 1.000 ,
                Position = UDim2.new(0, 0, 1, 0) ,
                Size = UDim2.new(1, 0, 1, -50) ,
            },{
                u:c("UIListLayout",{
                    SortOrder = Enum.SortOrder.LayoutOrder
                })
            })
        })

        local c = {}
        function c:createCategory()
            local sectionHolder = Folder.SectionHolder
            local Category = u:c("Frame",{
                Name = "Section" ,
                Parent = sectionHolder ,
                BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                BackgroundTransparency = 1.000 ,
                Size = UDim2.new(1, 0, 0, 40) ,
            },{
                u:c("ImageLabel",{
                    Name = "Branch" ,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                    BackgroundTransparency = 1.000 ,
                    Position = UDim2.new(0.125, 0, 0, 0) ,
                    Size = UDim2.new(0, 25, 1, 0) ,
                    Image = "rbxassetid://13444423984" ,
                    ImageColor3 = Color3.fromRGB(232, 28, 90) ,
                    ScaleType = Enum.ScaleType.Fit ,
                }),
                u:c("TextLabel",{
                    Name = "SectionName" ,
                    AnchorPoint = Vector2.new(1, 0) ,
                    BackgroundColor3 = Color3.fromRGB(27, 27, 27) ,
                    BorderSizePixel = 0 ,
                    Position = UDim2.new(0.930000007, 0, 0, 0) ,
                    Size = UDim2.new(0.730000019, 0, 1, 0) ,
                    Font = Enum.Font.GothamBold ,
                    TextColor3 = Color3.fromRGB(255, 255, 255) ,
                    TextSize = 14.000 ,
                    TextXAlignment = Enum.TextXAlignment.Left ,
                },{
                    u:c("UIPadding",{})
                }),
                u:c("TextButton",{
                    Name = "HitBox" ,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255) ,
                    BackgroundTransparency = 1.000 ,
                    Size = UDim2.new(1, 0, 1, 0) ,
                    Font = Enum.Font.SourceSans ,
                    TextColor3 = Color3.fromRGB(0, 0, 0) ,
                    TextSize = 14.000 ,
                    TextTransparency = 1.000 ,
                })
            })
        end
        return c
    end
    return b
end
return a
