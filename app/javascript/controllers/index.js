// Import and register all your controllers from the importmap under controllers/*

import { application } from "controllers/application";

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading";
import HelloController from "./hello_controller";
eagerLoadControllersFrom("controllers", application);
application.register("hello", HelloController);
