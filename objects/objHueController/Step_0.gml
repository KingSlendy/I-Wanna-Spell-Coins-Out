if (layer_fx != -1) {
    if (fx_get_name(layer_fx) == "_filter_colourise") {
        fx_set_parameter(layer_fx, "g_TintCol", [color_get_red(hue) / 255, color_get_green(hue) / 255, color_get_blue(hue) / 255, 1]);
    }
}