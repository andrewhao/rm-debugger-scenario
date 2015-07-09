### Version / Components

RubyMine 7.1.3
debase 0.1.7
ruby-debug-ide 0.4.32
Ruby 2.2.2

### Steps to reproduce

1. Set a breakpoint in `CarDelegator#color`
1. Execute `car.rb` with RubyMine in a debugging sessions:
1. Debugger exits forcefully at breakpoint in `CarDecorator#color`

```
/opt/rubies/2.2.2/bin/ruby -e
at_exit{sleep(1)};$stdout.sync=true;$stderr.sync=true;load($0=ARGV.shift)
/Users/andrewhao/.gem/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/bin/rdebug-ide
--debug --disable-int-handler --evaluation-timeout 10
--rubymine-protocol-extensions --port 51148 --dispatcher-port 51149
-- /Users/andrewhao/rm-debugger-scenario/car.rb
Fast Debugger (ruby-debug-ide 0.4.32, debase 0.1.7) listens on
127.0.0.1:51148
Connected from 127.0.0.1
99988: Starting control thread
99988: Processing in control: b
/Users/andrewhao/rm-debugger-scenario/car.rb:11
99988: <breakpointAdded no="1"
location="/Users/andrewhao/rm-debugger-scenario/car.rb:11"/>
99988: Processing in control: b
/Users/andrewhao/rm-debugger-scenario/car.rb:18
99988: <breakpointAdded no="2"
location="/Users/andrewhao/rm-debugger-scenario/car.rb:18"/>
99988: Processing in control: b
/Users/andrewhao/rm-debugger-scenario/car.rb:19
99988: <breakpointAdded no="3"
location="/Users/andrewhao/rm-debugger-scenario/car.rb:19"/>
99988: Processing in control: start
99988: Starting: running program script
99988: <breakpoint file="/Users/andrewhao/rm-debugger-scenario/car.rb"
line="18" threadId="2"/>
99988: Stopping Thread #<Thread:0x007fb9e88c03a8> (99988)
99988: Threads equal: true
99988: Processing in control: th l
99988: <threads>
99988: <thread id="2" status="sleep" pid="99988" />
99988: </threads>
99988: Processing in control: th l
99988: <threads>
99988: <thread id="2" status="sleep" pid="99988" />
99988: </threads>
99988: Processing in control: th l
99988: <threads>
99988: <thread id="2" status="sleep" pid="99988" />
99988: </threads>
99988: Processing in context: w
99988: <frames>
99988: <frame no="1"
file="/Users/andrewhao/rm-debugger-scenario/car.rb" line="18"
current='true' />
99988: <frame no="2"
file="/Users/andrewhao/.gem/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/lib/ruby-debug-ide.rb"
line="86" />
99988: <frame no="3"
file="/Users/andrewhao/.gem/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/lib/ruby-debug-ide.rb"
line="86" />
99988: <frame no="4"
file="/Users/andrewhao/.gem/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/bin/rdebug-ide"
line="121" />
99988: <frame no="5" file="/Users/andrewhao/rm-debugger-scenario/-e"
line="1" />
99988: <frame no="6" file="/Users/andrewhao/rm-debugger-scenario/-e"
line="1" />
99988: </frames>
99988: Processing in context: frame 1
99988: Selected frame no 0
99988: Processing in context:  v l
99988: <variables>
99988: <variable name="c"  kind="local"  type="Car"
hasChildren="true" objectId="+0x3fdcf5469350">
99988: <value><![CDATA[#&lt;Car:0x007fb9ea8d26a0&gt;]]></value>
99988: </variable>
99988: <variable name="cd"  kind="local"  type="CarDecorator"
hasChildren="true" objectId="+0x3fdcf5469328">
99988: <value><![CDATA[#&lt;Car:0x007fb9ea8d26a0&gt;]]></value>
99988: </variable>
99988: </variables>
99988: Processing in context: frame 1
99988: Selected frame no 0
99988: Processing in context:  v inspect Car
99988: Evaluating Car with timeout after 10 sec
99988: <variables>
99988: <variable name="eval_result"  kind="local"  type="Class"
hasChildren="false" objectId="+0x3fdcf5469508">
99988: <value><![CDATA[Car]]></value>
99988: </variable>
99988: </variables>
99988: Processing in context: frame 1
99988: Selected frame no 0
99988: Processing in context:  v inspect CarDecorator
99988: Evaluating CarDecorator with timeout after 10 sec
99988: <variables>
99988: <variable name="eval_result"  kind="local"  type="Class"
hasChildren="false" objectId="+0x3fdcf5469404">
99988: <value><![CDATA[CarDecorator]]></value>
99988: </variable>
99988: </variables>
99988: Processing in context: cont
red
99988: Resumed Thread #<Thread:0x007fb9e88c03a8>
99988: <breakpoint file="/Users/andrewhao/rm-debugger-scenario/car.rb"
line="19" threadId="2"/>
99988: Stopping Thread #<Thread:0x007fb9e88c03a8> (99988)
99988: Threads equal: true
99988: Processing in control: th l
99988: <threads>
99988: <thread id="2" status="sleep" pid="99988" />
99988: </threads>
99988: Processing in control: th l
99988: <threads>
99988: <thread id="2" status="sleep" pid="99988" />
99988: </threads>
99988: Processing in control: th l
99988: <threads>
99988: <thread id="2" status="sleep" pid="99988" />
99988: </threads>
99988: Processing in context: w
99988: <frames>
99988: <frame no="1"
file="/Users/andrewhao/rm-debugger-scenario/car.rb" line="19"
current='true' />
99988: <frame no="2"
file="/Users/andrewhao/.gem/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/lib/ruby-debug-ide.rb"
line="86" />
99988: <frame no="3"
file="/Users/andrewhao/.gem/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/lib/ruby-debug-ide.rb"
line="86" />
99988: <frame no="4"
file="/Users/andrewhao/.gem/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/bin/rdebug-ide"
line="121" />
99988: <frame no="5" file="/Users/andrewhao/rm-debugger-scenario/-e"
line="1" />
99988: <frame no="6" file="/Users/andrewhao/rm-debugger-scenario/-e"
line="1" />
99988: </frames>
99988: Processing in context: frame 1
99988: Selected frame no 0
99988: Processing in context:  v l
99988: <variables>
99988: <variable name="c"  kind="local"  type="Car"
hasChildren="true" objectId="+0x3fdcf5469350">
99988: <value><![CDATA[#&lt;Car:0x007fb9ea8d26a0&gt;]]></value>
99988: </variable>
99988: <variable name="cd"  kind="local"  type="CarDecorator"
hasChildren="true" objectId="+0x3fdcf5469328">
99988: <value><![CDATA[#&lt;Car:0x007fb9ea8d26a0&gt;]]></value>
99988: </variable>
99988: </variables>
99988: Processing in context: frame 1
99988: Selected frame no 0
99988: Processing in context:  v inspect Car
99988: Evaluating Car with timeout after 10 sec
99988: <variables>
99988: <variable name="eval_result"  kind="local"  type="Class"
hasChildren="false" objectId="+0x3fdcf5469508">
99988: <value><![CDATA[Car]]></value>
99988: </variable>
99988: </variables>
99988: Processing in context: frame 1
99988: Selected frame no 0
99988: Processing in context:  v inspect CarDecorator
99988: Evaluating CarDecorator with timeout after 10 sec
99988: <variables>
99988: <variable name="eval_result"  kind="local"  type="Class"
hasChildren="false" objectId="+0x3fdcf5469404">
99988: <value><![CDATA[CarDecorator]]></value>
99988: </variable>
99988: </variables>
99988: Processing in context: cont
99988: Resumed Thread #<Thread:0x007fb9e88c03a8>
99988: <breakpoint file="/Users/andrewhao/rm-debugger-scenario/car.rb"
line="11" threadId="2"/>
99988: Stopping Thread #<Thread:0x007fb9e88c03a8> (99988)
99988: Threads equal: true
99988: Processing in control: th l
99988: <threads>
99988: <thread id="2" status="sleep" pid="99988" />
99988: </threads>
99988: Processing in control: th l
99988: <threads>
99988: <thread id="2" status="sleep" pid="99988" />
99988: </threads>
99988: Processing in control: th l
99988: <threads>
99988: <thread id="2" status="sleep" pid="99988" />
99988: </threads>
99988: Processing in context: w
99988: <frames>
99988: <frame no="1"
file="/Users/andrewhao/rm-debugger-scenario/car.rb" line="11"
current='true' />
99988: <frame no="2"
file="/Users/andrewhao/rm-debugger-scenario/car.rb" line="19" />
99988: <frame no="3"
file="/Users/andrewhao/.gem/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/lib/ruby-debug-ide.rb"
line="86" />
99988: <frame no="4"
file="/Users/andrewhao/.gem/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/lib/ruby-debug-ide.rb"
line="86" />
99988: <frame no="5"
file="/Users/andrewhao/.gem/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/bin/rdebug-ide"
line="121" />
99988: <frame no="6" file="/Users/andrewhao/rm-debugger-scenario/-e"
line="1" />
99988: <frame no="7" file="/Users/andrewhao/rm-debugger-scenario/-e"
line="1" />
99988: </frames>
red!
99988: Processing in context: frame 1
99988: Selected frame no 0
99988: Processing in context:  v l
99988: <error>
99988: INTERNAL ERROR!!! undefined local variable or method
`m&#39; for #&lt;Car:0x007fb9ea8d26a0 @color=&quot;red&quot;&gt;

99988: </error>
99988: <error>
99988: /Users/andrewhao/rm-debugger-scenario/car.rb:11:in
`color&#39;
/opt/boxen/rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems/debase-0.1.debase7/lib/debase/context.rb:8:in
`eval&#39;
/opt/boxen/rbenv/versions/2.2.versions2/lib/ruby/gems/2.2.0/gems/debase-0.1.7/lib/debase/context.rb:8:in
`block in frame_locals&#39;
/opt/boxen/rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems/debasese-0.1.7/lib/debase/context.rb:8:in
`each&#39;
/opt/boxen/rbenv/versionsns/2.2.2/lib/ruby/gems/2.2.0/gems/debase-0.1.7/lib/debase/context.rb:8:in
`frame_locals&#39;
/Users/andrewhao/.gem/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/32lib/ruby-debug-ide/commands/variables.rb:129:in
`execute&#39;
/Users/andrewhaondrewhao/.gem/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/lib/ruby-debug-ide/ide_processor.rb:41:in
`block (2 levels) in process_commands&#39;
/Users/andrewhaondrewhaoewhao/.gem/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/lib/ruby-debug-ide/ide_processor.rb:34:in
`each&#39;
/Users/andrewhao/.gem/ruby/2.2.0/gems/ruby-debugg-ide-0.4.32/lib/ruby-debug-ide/ide_processor.rb:34:in
`block in process_commands&#39;
/Users/andrewhao/.gem/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/lib/ruby-debug-ide/ide_processor.rb:33:in
`catch&#39;
/Users/andrewhao/.gem/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/lib/ruby-debug-ide/ide_processor.rb:33:in
`process_commands&#39;
/Users/andrewhao/.gem/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/libib/ruby-debug-ide/event_processor.rb:58:in
`line_event&#39;
/Users/andrewhaorewhao/.gem/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/lib/ruby-debug-ide/event_processor.rb:34:in
`at_line&#39;
/opt/boxen/rbenv/versions/2.2.2/lib/ruby/rubygems/2.2.0/gems/debase-0.1.7/lib/debase/context.rb:41:in
`at_line&#39;
/Users/andrewhao/rm-debugger-scenario/car.rb:11:in `color&#39;
/Users/andrewhao/rm-debuggger-scenario/car.rb:19:in `&lt;top
(required)&gt;&#39;
/Users/andrewhaoao/.gem/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/lib/ruby-debug-ide.rb:86:in
`debug_load&#39;
/Users/andrewhao/.gem/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/lib/ruby-debug-ide.rb:86:in
`debug_program&#39;
/Users/andrewhao/.gems/ruby/2.2.0/gems/ruby-debug-ide-0.4.32/bin/rdebug-ide:121:in
`&lt;top (required)&gt;&#39;
-e:1:in `load&#39;
-e:1:in `&lt;main&gt;&#39;
99988: </error>
    99988: Resumed Thread #<Thread:0x007fb9e88c03a8>

Process finished with exit code 0
```


