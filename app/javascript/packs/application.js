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

if(/Android [4-6]/.test(navigator.appVersion)) {
   window.addEventListener("resize", function() {
      if(document.activeElement.tagName=="INPUT" || document.activeElement.tagName=="TEXTAREA") {
         window.setTimeout(function() {
            document.activeElement.scrollIntoViewIfNeeded();
         },0);
      }
   })
}
