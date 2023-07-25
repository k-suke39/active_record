import { Application } from "@hotwired/stimulus";
import { Codemirror } from "@codemirror";

const application = Application.start();

// Configure Stimulus development experience
application.debug = false;
window.Stimulus = application;

export { application };
