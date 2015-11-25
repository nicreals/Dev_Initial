#TO INITIAL CODE ENVIRIONMENT


###Xcode themes dir path:###


*~/Library/Developer/Xcode/UserData/FontAndColorThemes/*


###Xcode snippets dir path:###


*~/Library/Developer/Xcode/UserData/CodeSnippets*


###Reveal Connection###
**Terminal:**
vim ~/.lldbinit


```
command alias reveal_load_sim expr (void*)dlopen("/Applications/Reveal.app/Contents/SharedSupport/iOS-Libraries/libReveal.dylib", 0x2);
command alias reveal_load_dev expr (void*)dlopen([(NSString*)[(NSBundle*)[NSBundle mainBundle]               pathForResource:@"libReveal" ofType:@"dylib"] cStringUsingEncoding:0    x4], 0x2);
command alias reveal_start expr (void)[(NSNotificationCenter*)[NSNotificationCenter defaultCenter]           postNotificationName:@"IBARevealRequestStart" object:nil];
command alias reveal_stop expr (void)[(NSNotificationCenter*)[NSNotificationCenter defaultCenter]            postNotificationName:@"IBARevealRequestStop" object:nil];

```

该步骤其实是为lldb设置了4个别名，为了后续方便操作，这4个别名意义如下：

1. reveal_load_sim 为模拟器加载reveal调试用的动态链接库

2. reveal_load_dev 为真机加载reveal调试用的动态链接库

3. reveal_start 启动reveal调试功能

4. reveal_stop 结束reveal调试功能


**Breakpoint**

![breakpoing](http://git.devzeng.com/images/reveal_integrating/reveal_load_sim.png)