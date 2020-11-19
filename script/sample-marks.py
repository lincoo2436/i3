#!/usr/bin/env python

from i3ipc import Connection, Event
import os

# Create the Connection object that can be used to send commands and subscribe
# to events.
i3 = Connection()

markeds = i3.get_tree().find_marked()
focused = i3.get_tree().find_focused()
#marks = i3.get_marks()
#print(marks)
## 两者输出有不同，一个输出的是数组，一个输出的是段落
#print(focused.name)
if i3.get_marks:
    for a in range(len(markeds)):
    #    print(markeds[a].name)
        print('被mark的标识是："%s": ||| 被mark的程序是："%s": ||| mark窗口位于"%s" 工作区' % (markeds[a].marks, markeds[a].window_class,  markeds[a].workspace().name))
        ma = input("请输入需要跳转的mark标识：")
    ## 通过i3.command指令执行跳转命令,这里没有写输入判断，输错了不做任何反馈
        i3.command('[con_mark="%s"] focus ' % ma)
else:
    print("没有被标识的程序")

#    print('被mark的程序是："%s"' % markeds[a].window_class)
#    print('mark窗口位于"%s" 工作区' % markeds[a].workspace().name)
### 有一个问题，marks和获得的窗口信息对不上，因为marks和窗口信息是两个函数，怎么解决?(解决了，单独有一个marks的参数可以调用显示marks的标记)
