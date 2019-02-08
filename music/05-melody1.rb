use_bpm 105
live_loop :melody do
  use_synth :prophet
  play_pattern_timed [60, 64, 71, 67, 71, 69, 71, 71],
    [1, 0.5]
  sleep 1.5
  play_pattern_timed [60, 60, 71, 67, 71, 69, 71, 71].reverse,
    [1, 0.5]
  sleep 1.5
end
