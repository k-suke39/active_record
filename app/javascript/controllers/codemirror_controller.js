import { Controller } from "@hotwired/stimulus";
import { basicSetup, EditorView } from "@codemirror/autocomplete";

// Connects to data-controller="codemirror"
export default class extends Controller {
  connect() {
    new EditorView({
      doc: "console.log('hello')\n",
    });
  }
}
