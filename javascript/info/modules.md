[Modules](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules)
------

Other differences between modules and standard scripts

1. You need to pay attention to local testing — if you try to load the HTML file locally (i.e. with a file:// URL), you'll run into CORS errors due to JavaScript module security requirements. You need to do your testing through a server.
2. Also, note that you might get different behavior from sections of script defined inside modules as opposed to in standard scripts. This is because modules **use strict mode automatically**.
3. There is no need to use the defer attribute (see \<script\> attributes) when loading a module script; modules **are deferred automatically**.
4. Modules are **only executed once**, even if they have been referenced in multiple \<script\> tags.
5. Module features are imported into the scope of a single script — they aren't available in the global scope. Therefore, you will only be able to access imported features in the script they are imported into, and you won't be able to access them from the JavaScript console, for example. You'll still get syntax errors shown in the DevTools, but you'll not be able to use some of the debugging techniques you might have expected to use.
