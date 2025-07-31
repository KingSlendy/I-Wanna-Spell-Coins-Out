if (layer_fx_background != -1) {
    if (fx_get_name(layer_fx_background) == "_filter_tintfilter") {
        fx_set_parameter(layer_fx_background, "g_TintCol", [color_get_red(hue) / 255, color_get_green(hue) / 255, color_get_blue(hue) / 255, 1]);
    }
}

if (layer_fx_tiles != -1) {
    if (fx_get_name(layer_fx_tiles) == "_filter_tintfilter") {
        fx_set_parameter(layer_fx_tiles, "g_TintCol", [color_get_red(hue) / 255, color_get_green(hue) / 255, color_get_blue(hue) / 255, 1]);
    }
}