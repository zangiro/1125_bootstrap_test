import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["word"]

  clickTest() {
    const word = this.wordTarget

    word.style.display = 'none'
  }
}
