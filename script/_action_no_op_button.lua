rev = "0.1" 
action_script("*No Op Button " .. rev, ACCESS_ADVANCED, "", BUTTON)

description("Button performs no action except running the indicator")

linked_indicator("_indicator_no_op_button_indicator")

dwell_time = property(FLOAT, "Dwell Time", 2.0, ACCESS_ADVANCED, " Seconds")
set_property_tool_tip(dwell_time, "Indicator function will run for this many seconds when button is pressed")

function stop ()
  caller:set_state(0)
end

function start ()
  caller:set_state(1)

  start_timer(dwell_time.get, stop, ONE_SHOT)
end
