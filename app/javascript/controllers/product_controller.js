import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="product"
export default class extends Controller {
  static targets = ["form"];

  connect() {}

  // Submit filter form in the product index page
  submitHandler() {
    const form = this.formTarget;
    form.submit();
  }
}
