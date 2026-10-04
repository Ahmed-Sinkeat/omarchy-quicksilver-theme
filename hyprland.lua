-- Quicksilver window handling, adapted from the Ayaka theme (animations by Raze).

local active_border_color = { colors = { "rgba(415f7dee)", "rgba(9aa3b0ee)" }, angle = 45 }
local inactive_border_color = "rgba(9ba1aa99)"

hl.config({
  general = {
    gaps_in = 4,
    gaps_out = 6,
    border_size = 2,
    resize_on_border = true,
    extend_border_grab_area = 15,
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },

  decoration = {
    rounding = 10,
    active_opacity = 0.98,
    inactive_opacity = 0.9,
    fullscreen_opacity = 1.0,

    shadow = {
      enabled = true,
      range = 16,
      render_power = 3,
      color = "rgba(1a1d2240)",
      color_inactive = "rgba(1a1d2226)",
      offset = "0 0",
    },

    -- Ayaka darkens blur (brightness 0.8); keep it neutral so silver stays silver.
    blur = {
      enabled = true,
      size = 6,
      passes = 3,
      contrast = 1.2,
      brightness = 1.0,
      vibrancy = 0.2,
      vibrancy_darkness = 0.2,
      noise = 0.04,
      ignore_opacity = true,
      new_optimizations = true,
    },
  },

  misc = {
    background_color = "rgb(bcc0c6)",
  },
})

hl.curve("snappy", { type = "bezier", points = { { 0.22, 1.0 }, { 0.35, 1.0 } } })
hl.curve("smooth", { type = "bezier", points = { { 0.23, 1.0 }, { 0.32, 1.0 } } })
hl.curve("slide", { type = "bezier", points = { { 0.165, 0.84 }, { 0.44, 1.0 } } })
hl.curve("overshot", { type = "bezier", points = { { 0.13, 0.99 }, { 0.29, 1.08 } } })
hl.curve("macspring", { type = "bezier", points = { { 0.18, 1.08 }, { 0.35, 1.06 } } })
hl.curve("md3_standard", { type = "bezier", points = { { 0.2, 0 }, { 0, 1 } } })
hl.curve("md3_accel", { type = "bezier", points = { { 0.3, 0 }, { 0.8, 0.15 } } })

hl.animation({ leaf = "windows", enabled = true, speed = 3, bezier = "snappy", style = "slide" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4, bezier = "macspring", style = "popin 85%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "snappy", style = "popin 85%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 3, bezier = "snappy" })
hl.animation({ leaf = "fade", enabled = true, speed = 4, bezier = "smooth" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 3, bezier = "smooth" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2, bezier = "smooth" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4, bezier = "slide" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 1.5, bezier = "overshot", style = "popin 80%" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.3, bezier = "md3_accel", style = "popin 90%" })
hl.animation({ leaf = "layers", enabled = true, speed = 1.5, bezier = "md3_standard" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3, bezier = "smooth" })
hl.animation({ leaf = "border", enabled = true, speed = 5, bezier = "smooth" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 7, bezier = "smooth" })
