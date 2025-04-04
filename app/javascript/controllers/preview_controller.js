import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "preview", "existing"]

  previewImage() {
    const input = this.inputTarget
    const preview = this.previewTarget
    const existing = this.existingTarget

    if (existing) {existing.style.display = 'none';}
  }
}
