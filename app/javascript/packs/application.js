import "bootstrap";
require("chartkick")
require("chart.js")

import { initMapbox } from '../plugins/init_mapbox';
import { detectPopup } from '../plugins/detect_popup';


initMapbox();
detectPopup();
