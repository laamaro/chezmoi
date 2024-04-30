import { Controller } from "@hotwired/stimulus"
import Flatpickr from 'stimulus-flatpickr'
import { application } from "controllers/application"
application.register('datepickr', Flatpickr)

// Connects to data-controller="datepickr"
export default class extends Controller {
  initialize() {
    // sets your language (you can also set some global setting for all time pickers)
    this.config = {
      enableTime: true,
      dateFormat: 'd-m-Y',
    }
  }
}
