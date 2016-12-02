
  -- Respect This Mustache
  -- rtmMinimap
  -- Pobre - 2013
  
  ----------------
  -- Initialize --
  ----------------
  
  -- let's get addon namespace and create config object
  local addon, rtm = ...
  local cfg = {}
  rtm.cfg = cfg
  
  -------------
  -- Options --
  -------------

  -- Minimap
  cfg.minimap = {
    size = 150,
    shape = "SQUARE", -- Minimap Shape, can be Square or Round.
    backdrop = {
      bgFile = nil,  -- path to the background texture
      edgeFile = "Interface\\AddOns\\crMinimap\\media\\blank",  -- path to the border texture
      tile = false,  -- true to repeat the background texture to fill the frame, false to scale it
      tileSize = 32,    -- size (width or height) of the square repeating background tiles (in pixels)
      edgeSize = 1,    -- thickness of edge segments and square size of edge corners (in pixels)
      insets = {        -- distance from the edges of the frame to those of the background texture (in pixels)
        left = 1,
        right = 1,
        top = 1,
        bottom = 1,
      },
    },
  }
    
  -- Clock
  cfg.ticker = {
    position = {
      a1 = "BOTTOM", -- Frame Anchor
      af = Minimap, -- Parent frame
      a2 = "BOTTOM", -- Parent anchor
      x = 0,
      y = -5,
    },
    font = {
      name = "Fonts\\ARIALN.TTF", -- Default fonts: FRIZQT__, ARIALN, MORPHEUS, SKURRI.
      size = 15,
      flag = "OUTLINE", -- Can be: nil, OUTLINE, THICKOUTLINE, MONOCHROME
    },
    color = {
      r = 0,
      g = 1,
      b = 0.5,
    },
  }
    
  -- Mail
  cfg.mail = {
      size = 16,
      icon = "Interface\\AddOns\\crMinimap\\media\\mail",
  }
  
  -- Backdrop, attempting to create pixel border in minimap frame
  cfg.backdrop = {

  }
