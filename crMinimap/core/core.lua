
  -- Respect This Mustache
  -- rtmMinimap
  -- Pobre - 2013

  -- Let's get addon namespace and config object
  local addon, rtm = ...
  local cfg = rtm.cfg

  ------------------
  -- Custom Shape --
  ------------------
  
  function GetMinimapShape()
    return cfg.minimap.shape
  end
  
  ----------------------------
  -- Cleaning up the design --
  ----------------------------
  
  -- hide zoomin and zoomout
  MinimapZoomIn:Hide()
  MinimapZoomIn:UnregisterAllEvents()
  MinimapZoomOut:Hide()
  MinimapZoomOut:UnregisterAllEvents()
  -- hide map world button
  MiniMapWorldMapButton:Hide()
  MiniMapWorldMapButton:UnregisterAllEvents()
  -- hide northtag
  MinimapNorthTag:SetAlpha(0)
  -- hide minimap border
  MinimapBorder:Hide()
  MinimapBorderTop:Hide()
  -- hide zone text
  MinimapZoneText:Hide()
  -- hide zone text button
  MinimapZoneTextButton:Hide()
  MinimapZoneTextButton:UnregisterAllEvents()
  -- hide tracking button
  MiniMapTracking:Hide()
  MiniMapTracking:UnregisterAllEvents()

  ------------------
  -- Clock Button --
  ------------------
  
  LoadAddOn("Blizzard_TimeManager")
  if TimeManagerClockButton then
    -- Hide the background texture
    local region = TimeManagerClockButton:GetRegions()
    region:Hide()
    -- Set new position for Clock
    TimeManagerClockButton:SetPoint(cfg.ticker.position.a1, cfg.ticker.position.af, cfg.ticker.position.a2, cfg.ticker.position.x, cfg.ticker.position.y)
    -- New Font Style and Color
  	TimeManagerClockTicker:SetFont(cfg.ticker.font.name, cfg.ticker.font.size, cfg.ticker.font.flag)
    TimeManagerClockTicker:SetTextColor(0, 1, 0.5)
  end

  ------------
  -- Design --
  ------------
  
	-- Minimap Position
	MinimapCluster:SetPoint("TOPRIGHT", 0, -1)
  -- Minimap Backdrop
  Minimap:SetBackdrop(cfg.minimap.backdrop)
  Minimap:SetMaskTexture("Interface\\AddOns\\crMinimap\\media\\blank")
  Minimap:SetBackdropBorderColor(0, 0, 0, 1)
  
  -- New Mail Notification
  MiniMapMailFrame:SetSize(cfg.mail.size, cfg.mail.size)
  MiniMapMailFrame:ClearAllPoints()
  MiniMapMailFrame:SetPoint("TOPLEFT", Minimap, "TOPLEFT",  5, -3)

  MiniMapMailBorder:SetTexture(nil)
  MiniMapMailIcon:SetTexture(cfg.mail.icon)
  MiniMapMailIcon:SetPoint("TOPLEFT", Minimap, "TOPLEFT", 5, -3)

  hooksecurefunc(MiniMapMailFrame, "Show", function()
    MiniMapMailBorder:SetTexture(nil)
    MiniMapMailIcon:SetTexture(cfg.mail.icon)
  end)
  
  -- Reallocate Green Eye (LFG Frame) and strip ugly border :P
  QueueStatusMinimapButton:ClearAllPoints()
  QueueStatusMinimapButton:SetPoint("BOTTOMRIGHT", Minimap, "BOTTOMRIGHT", 0, 0)
  QueueStatusMinimapButtonBorder:SetTexture(nil)
  
  -------------
  -- Scripts --
  -------------
  
  -- New Tracking Function
  Minimap:SetScript("OnMouseUp", function(self, button)
    if (button == "RightButton") then
      ToggleDropDownMenu(1, nil, MiniMapTrackingDropDown, self, - (Minimap:GetWidth() * 0.7), -3)
    else
      Minimap_OnClick(self)
    end
  end)
  
  -- minimap mousewheel zoom
  Minimap:EnableMouseWheel()
  Minimap:SetScript("OnMouseWheel", function(self, direction)
    if(direction > 0) then
      Minimap_ZoomIn()
    else
      Minimap_ZoomOut()
    end
  end)

