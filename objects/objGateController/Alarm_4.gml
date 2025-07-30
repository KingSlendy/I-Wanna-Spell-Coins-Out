var spikes_gone = true;

with (objSpikeController) {
	if (x < 800 && hspeed != 0) {
		spikes_gone = false;
		break;
	}
}

if (!spikes_gone) {
	alarm[4] = 1;
	exit;
}

print(spike_number);
ask_spikes = true;
objPlayer.frozen = true;