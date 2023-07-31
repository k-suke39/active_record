import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="tabs"
export default class extends Controller {
  static targets = ["tab"];
  toggle(event) {
    this.tabTargets.forEach((tab) => {
      if (tab.classList.contains("active-tab")) {
        tab.classList.remove("active-tab");
      } else {
        tab.classList.add("active-tab");
      }
    });
  }
}
