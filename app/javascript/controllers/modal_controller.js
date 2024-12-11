import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["frame"];

  connect() {
    this.modal = new bootstrap.Modal(this.element); // Create a new Bootstrap modal instance
  }

  open(event) {
    event.preventDefault(); // Prevent the default link behavior
    this.frameTarget.src = event.currentTarget.getAttribute("href"); // Load content into the turbo frame
    this.modal.show(); // Show the modal
  }

  close() {
    this.modal.hide(); // Hide the modal
    this.frameTarget.src = ""; // Clear the content
  }
}
