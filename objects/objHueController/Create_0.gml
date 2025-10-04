#macro HUE_RED   c_red
#macro HUE_GREEN c_lime
#macro HUE_BLUE  c_blue

hue = c_white;
layer_fx_background = layer_get_fx("Background");
layer_fx_tiles = layer_get_fx("Tiles");
layer_fx_fake = layer_get_fx("Fake");

var layer_fx_killers = [
	"Spikes_Red",
	"Spikes_Green",
	"Spikes_Blue",
	"Fruits_Red",
	"Fruits_Green",
	"Fruits_Blue"
];

for (var i = 0; i < array_length(layer_fx_killers); i++) {
	var layer_fx_name = layer_fx_killers[i];
	var layer_fx_killer = layer_get_fx(layer_fx_name);
	
	if (layer_fx_killer != -1) {
	    if (fx_get_name(layer_fx_killer) == "_filter_tintfilter") {
			var color = c_white;
			
			if (string_ends_with(layer_fx_name, "_Red")) {
				color = HUE_RED;
			} else if (string_ends_with(layer_fx_name, "_Green")) {
				color = HUE_GREEN;
			} else if (string_ends_with(layer_fx_name, "_Blue")) {
				color = HUE_BLUE;
			}
			
	        fx_set_parameter(layer_fx_killer, "g_TintCol", [color_get_red(color) / 255, color_get_green(color) / 255, color_get_blue(color) / 255, 1]);
	    }
	}
}