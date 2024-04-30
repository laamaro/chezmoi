import { Controller } from "@hotwired/stimulus"
import Flatpickr from 'stimulus-flatpickr'
import { application } from "controllers/application"
application.register('flatpickr', Flatpickr)

// Connects to data-controller="flatpickr"
export default class extends Flatpickr {
  connect() {
    console.log('opa');
  }
}
