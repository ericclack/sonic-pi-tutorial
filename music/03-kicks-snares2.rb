use_bpm 105

live_loop :drums do
  sample :drum_bass_hard
  sleep 0.25
  if rand < 0.3
    sample :drum_cymbal_soft, amp: 0.3
  end
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.25
  if rand < 0.3
    sample :drum_bass_hard
  end
  sample :drum_cymbal_pedal, amp: 0.5
  sleep 0.25
end

live_loop :snares do
  extras = rand < 0.5
  sleep 1
  if extras
    sample :drum_snare_hard, amp: 0.1
    sleep 0.25
    sample :drum_snare_hard, amp: 0.3
    sleep 0.25
  else
    sleep 0.5
  end
  sample :drum_snare_hard
  sleep 0.25
  if extras
    sample :drum_snare_hard, amp: 0.3
  end
  sleep 0.25
end
