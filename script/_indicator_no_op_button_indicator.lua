rev = "0.1"
indicator_script("*No Op Button " .. rev, ACCESS_ADVANCED, "", BUTTON)

description("Indicator function for button with no action")

indicator_state(0, "Off", "Off", BINARY_OFF)
indicator_state(1, "Pressed", "Red Blink", BINARY_ON)

-- No start() function required as all functionality is handled in the associated action script

--[[
SCRIPT NOTES:
- Maintainer: Chris Cornelius - Pacific Lighting Systems
- Contributors: Chris Cornelius, PLS, ccornelius@plswa.com

CHANGELOG:

7/1/2026 - Version 0.1
- Initial code for team feedback, tested in LD 6.1.0

--]]
