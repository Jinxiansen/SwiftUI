//
//  ContentView.swift
//  Example
//
//  Created by 晋先森 on 2019/6/7.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("基础控件")) {
                    NavigationButton(destination: TextPage()) {
                        PageRow(title: "Text",subTitle: "显示一行或多行只读文本")
                    }
                    NavigationButton(destination: TextFieldPage()) {
                        PageRow(title: "TextField", subTitle: "显示可编辑文本界面的输入控件")
                    }
                    NavigationButton(destination: TextFieldPage()) {
                        PageRow(title: "SecureField", subTitle: "安全输入私密文本的输入控件")
                    }
                    NavigationButton(destination: ImagePage()) {
                        PageRow(title: "Image",subTitle: "用以展示本地图片")
                    }
                    NavigationButton(destination: WebImagePage()) {
                        PageRow(title: "WebImage",subTitle: "下载网络图片并展示")
                    }
                    NavigationButton(destination: WebViewPage()) {
                        PageRow(title: "WebView",subTitle: "用于展示一个打开的网页")
                    }
                    NavigationButton(destination: AlertPage()) {
                        PageRow(title: "Alert",subTitle: "用于展示一个弹框提醒")
                    }
                    
                }
                
                Section(header: Text("按钮")) {
                    NavigationButton(destination: ButtonPage()) {
                        PageRow(title: "Button",subTitle: "触发时执行操作的按钮")
                    }
                    NavigationButton(destination: NavigationButtonPage()) {
                        PageRow(title: "NavigationButton",subTitle: "按下时触发导航跳转的按钮")
                    }
                    PresentationButton(PageRow(title: "PresentationButton", subTitle: "触发时显示内容的按钮控件"),
                                       destination: Text("I'm Text")) {
                                        print("Present 🦄")
                    }
                    NavigationButton(destination: EditButtonPage()) {
                        PageRow(title: "EditButton",subTitle: "用于切换当前编辑模式的按钮")
                    }
                    //PageRow(title: "PasteButton",subTitle: "用于触发从粘贴板读取数据 - 尚未发布")
                }
                
                Section(header: Text("选择器")) {
                    NavigationButton(destination: DatePickerPage()) {
                        PageRow(title: "DatePicker",subTitle: "日期展示与选择")
                    }
                    NavigationButton(destination: TogglePage()) {
                        PageRow(title: "Toggle",subTitle: "开关状态切换")
                    }
                    NavigationButton(destination: SliderPage()) {
                        PageRow(title: "Slider",subTitle: "用以设置指定范围内的值")
                    }
                    NavigationButton(destination: StepperPage()) {
                        PageRow(title: "Stepper",subTitle: "用以增加或减少数值")
                    }
                    NavigationButton(destination: SegmentedControlPage()) {
                        PageRow(title: "SegmentedControl", subTitle: "用以从一组选项中进行选择")
                    }
                }
                
                Section(header: Text("布局")) {
                    NavigationButton(destination: HStackPage()) {
                        PageRow(title: "HStack",subTitle: "将子视图排列在水平线上的视图")
                    }
                    NavigationButton(destination: VStackPage()) {
                        PageRow(title: "VStack",subTitle: "将子视图排列在垂直线上的视图")
                    }
                    NavigationButton(destination: ZStackPage()) {
                        PageRow(title: "ZStack",subTitle: "覆盖子视图，在两轴上对齐")
                    }
                    NavigationButton(destination: ListPage()) {
                        PageRow(title: "List",subTitle: "列表容器，用以显示一列数据")
                    }
                    NavigationButton(destination: ScrollViewPage()) {
                        PageRow(title: "ScrollView",subTitle: "滚动视图")
                    }
                    NavigationButton(destination: ForEachPage()) {
                        PageRow(title: "ForEach",subTitle: "用于根据已有数据的集合展示视图")
                    }
                    NavigationButton(destination: GroupPage()) {
                        PageRow(title: "Group",subTitle: "用于集合多个视图，对 Group 设置的属性，将作用于每个子视图")
                        }.frame(height: 80)
                    
                    NavigationButton(destination: SectionPage()) {
                        PageRow(title: "Section",subTitle: "用于创建带头/尾部的视图内容，一般结合 `List` 组件使用")
                        }.frame(height: 80)
                }
                }.listStyle(.grouped)
                .navigationBarTitle(Text("Example"), displayMode: .large)
        }
    }
    
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

