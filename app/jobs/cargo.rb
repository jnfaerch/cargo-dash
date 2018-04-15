current_valuation = 0

Dashing.scheduler.every '1m', first_in: 1.second.since do |job|
  last_valuation = current_valuation
  current_valuation = rand(100)

  Dashing.send_event('valuation', { current: current_valuation, last: last_valuation })
  Dashing.send_event('synergy',   { value: rand(100) })
end
