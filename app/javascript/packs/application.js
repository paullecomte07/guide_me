import "bootstrap";
require("chartkick")
require("chart.js")

import { initMapbox } from '../plugins/init_mapbox';
import { detectPopup } from '../plugins/detect_popup';
import { traceLineMap } from '../plugins/GeoJSON_line';

initMapbox();
detectPopup();
