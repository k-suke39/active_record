import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="tabs"
export default class extends Controller {
  static targets = ["tab"];
  toggle(event) {
  // クリックされたタブをactiveにする
  event.currentTarget.classList.add("active-tab");
  // クリックされていない他のタブからactiveを削除する
  this.tabTargets.forEach((tab) => {
    if (tab !== event.currentTarget) {
      tab.classList.remove("active-tab");
    }
  });
  }
}
