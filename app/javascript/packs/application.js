import "bootstrap";
require("chartkick")
require("chart.js")

import { initMapbox } from '../plugins/init_mapbox';
import { detectPopup } from '../plugins/detect_popup';
import { traceLineMap } from '../plugins/GeoJSON_line';
import { colorPin } from '../plugins/change_color_pin';
initMapbox();
detectPopup();
colorPin();
