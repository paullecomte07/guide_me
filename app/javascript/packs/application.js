import "bootstrap";
require("chartkick")
require("chart.js")

import { initMapbox } from './plugins/init_mapbox';
import { traceLineMap } from './plugins/GeoJSON_line';
import { colorPin } from './plugins/change_color_pin';
import { disableButton } from '../plugins/disabled_button';

initMapbox();
colorPin();
disableButton();
