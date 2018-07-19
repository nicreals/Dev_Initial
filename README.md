#INIT CODING ENVIRIONMENT

___

###Xcode themes dir path:###


*~/Library/Developer/Xcode/UserData/FontAndColorThemes/*



###Xcode snippets dir path:###


*~/Library/Developer/Xcode/UserData/CodeSnippets*

###VSCode

```
"editor.fontFamily": "Monaco, Menlo,'Courier New', monospace",
"markdown.preview.fontFamily": "-apple-system,Monaco, BlinkMacSystemFont, 'Segoe WPC', 'Segoe UI', 'HelveticaNeue-Light', 'Ubuntu', 'Droid Sans', sans-serif",
"editor.minimap.enabled": false,
"editor.fontSize": 12,
"editor.scrollbar.verticalScrollbarSize": 8,
"editor.scrollbar.horizontalScrollbarSize": 8,
"editor.fontFamily": "Monaco,Menlo,'Courier New', monospace",
"workbench.editor.labelFormat": "default",
"workbench.iconTheme": "file-icons",
"markdown.preview.fontSize": 12,
"workbench.colorTheme": "One Dark Pro",
"workbench.activityBar.visible": false,
"markdown-preview-enhanced.scrollSync": true,
"markdown-preview-enhanced.previewTheme": "one-dark.css",
```


###Reveal Connection###
**Terminal:**
*vim ~/.lldbinit*


```
command alias reveal_load_sim expr (void*)dlopen("/Applications/Reveal.app/Contents/SharedSupport/iOS-Libraries/libReveal.dylib", 0x2);
command alias reveal_load_dev expr (void*)dlopen([(NSString*)[(NSBundle*)[NSBundle mainBundle]               pathForResource:@"libReveal" ofType:@"dylib"] cStringUsingEncoding:0    x4], 0x2);
command alias reveal_start expr (void)[(NSNotificationCenter*)[NSNotificationCenter defaultCenter]           postNotificationName:@"IBARevealRequestStart" object:nil];
command alias reveal_stop expr (void)[(NSNotificationCenter*)[NSNotificationCenter defaultCenter]            postNotificationName:@"IBARevealRequestStop" object:nil];

```

**Copy to add this four breakpoint action**

* reveal_load_sim 

* reveal_load_dev 

* reveal_start 

* reveal_stop


**Breakpoint**

![breakpoing](http://git.devzeng.com/images/reveal_integrating/reveal_load_sim.png)