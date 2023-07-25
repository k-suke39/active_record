import { Controller } from "@hotwired/stimulus";
import { basicSetup, EditorView } from "codemirror";

// Connects to data-controller="codemirror"
export default class extends Controller {
  static targets = ["editor"];
  connect() {
    this.editor = new EditorView({
      doc: "ここにコードを書いてください",
      extensions: [basicSetup],
      parent: this.editorTarget,
    });
  }
}
