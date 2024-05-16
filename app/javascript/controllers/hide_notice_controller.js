import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.hideAfterTimeout()
  }

  hideAfterTimeout() {
    setTimeout(() => {
        this.element.style.setProperty('display', 'none', 'important');
    }, 3000)
 }
}