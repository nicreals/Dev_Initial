#INIT CODING ENVIRIONMENT


###Xcode themes dir path:###


*~/Library/Developer/Xcode/UserData/FontAndColorThemes/*



###Xcode snippets dir path:###


*~/Library/Developer/Xcode/UserData/CodeSnippets*



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