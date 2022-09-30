import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

window.$ = window.jQuery = require("jquery");
require("index");
require("@nathanvda/cocoon")
import "controllers"
import "packs/flashes"
