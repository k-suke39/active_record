import { Controller } from "@hotwired/stimulus";
import { basicSetup, EditorView } from "codemirror";
import { post } from "@rails/request.js";

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

  sendContent() {
    let content = this.editor.state.doc.toString();
    console.log(content);
    const response = post("/practices", {
      body: { content: content },
    });
    console.log("送ったよー");
  }
}
