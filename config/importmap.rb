# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@fortawesome/fontawesome-free", to: "https://ga.jspm.io/npm:@fortawesome/fontawesome-free@6.4.0/js/all.js"


pin "codemirror", to: "https://ga.jspm.io/npm:codemirror@6.0.1/dist/index.js"
pin "@codemirror/commands", to: "https://ga.jspm.io/npm:@codemirror/commands@6.2.4/dist/index.js"
pin "@codemirror/lint", to: "https://ga.jspm.io/npm:@codemirror/lint@6.4.0/dist/index.js"
pin "@codemirror/search", to: "https://ga.jspm.io/npm:@codemirror/search@6.5.0/dist/index.js"
pin "crelt", to: "https://ga.jspm.io/npm:crelt@1.0.6/index.js"


pin "@codemirror/autocomplete", to: "https://ga.jspm.io/npm:@codemirror/autocomplete@6.9.0/dist/index.js"
pin "@codemirror/language", to: "https://ga.jspm.io/npm:@codemirror/language@6.8.0/dist/index.js"
pin "@codemirror/state", to: "https://ga.jspm.io/npm:@codemirror/state@6.2.1/dist/index.js"
pin "@codemirror/view", to: "https://ga.jspm.io/npm:@codemirror/view@6.15.3/dist/index.js"
pin "@lezer/common", to: "https://ga.jspm.io/npm:@lezer/common@1.0.3/dist/index.js"
pin "@lezer/highlight", to: "https://ga.jspm.io/npm:@lezer/highlight@1.1.6/dist/index.js"
pin "style-mod", to: "https://ga.jspm.io/npm:style-mod@4.0.3/src/style-mod.js"
pin "w3c-keyname", to: "https://ga.jspm.io/npm:w3c-keyname@2.2.8/index.js"
