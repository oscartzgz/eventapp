import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="image-preview"
export default class extends Controller {
  static targets = ["input", "preview"]

  connect() {
    console.log("Preview image stimulus controller connected")
  }

  preview() {
    const file = this.inputTarget.files[0]
    if (file) {
      const reader = new FileReader()

      reader.onload = (e) => {
        console.log("loading..")
        this.previewTarget.src = e.target.result
        this.previewTarget.classList.remove("hidden")
      }

      reader.readAsDataURL(file)
    }
  }
}
