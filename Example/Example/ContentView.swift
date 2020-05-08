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
                Section(header: Text("Animation")) {
                    NavigationLink(destination: LotteryView()) {
                        PageRow(title: "LotteryView", subTitle: "Rotation Lottery")
                    }
                }
                Section(header: Text("特殊视图")) {
                    NavigationLink(destination: WebViewPage()) {
                        PageRow(title: "WebView", subTitle: "用于展示一个打开的网页")
                    }
                    NavigationLink(destination: ControllerPage<UIKitController>()) {
                        PageRow(title: "UIViewController", subTitle: "打开 UIViewController")
                    }
                }
                Section(header: Text("基础控件")) {
                    NavigationLink(destination: TextPage()) {
                        PageRow(title: "Text",subTitle: "显示一行或多行只读文本")
                    }
                    NavigationLink(destination: TextFieldPage()) {
                        PageRow(title: "TextField", subTitle: "显示可编辑文本界面的输入控件")
                    }
                    NavigationLink(destination: TextFieldPage()) {
                        PageRow(title: "SecureField", subTitle: "安全输入私密文本的输入控件")
                    }
                    NavigationLink(destination: ImagePage()) {
                        PageRow(title: "Image",subTitle: "用以展示本地图片")
                    }
                    NavigationLink(destination: WebImagePage()) {
                        PageRow(title: "WebImage",subTitle: "下载网络图片并展示")
                    }
                }
                Section(header: Text("按钮")) {
                    NavigationLink(destination: ButtonPage()) {
                        PageRow(title: "Button",subTitle: "触发时执行操作的按钮")
                    }
                    NavigationLink(destination: NavigationButtonPage()) {
                        PageRow(title: "NavigationButton",subTitle: "按下时触发导航跳转的按钮")
                    }
                    NavigationLink(destination: Text("I'm Text")) {
                        PageRow(title: "PresentationButton",subTitle: "触发时显示内容的按钮控件")
                    }
                    NavigationLink(destination: EditButtonPage()) {
                        PageRow(title: "EditButton",subTitle: "用于切换当前编辑模式的按钮")
                    }
                }
                
                Section(header: Text("选择器")) {
                    NavigationLink(destination: PickerPage()) {
                        PageRow(title: "Picker",subTitle: "可自定义数据源的 Picker 选择器")
                    }
                    NavigationLink(destination: DatePickerPage()) {
                        PageRow(title: "DatePicker",subTitle: "日期展示与选择")
                    }
                    NavigationLink(destination: TogglePage()) {
                        PageRow(title: "Toggle",subTitle: "开关状态切换")
                    }
                    NavigationLink(destination: SliderPage()) {
                        PageRow(title: "Slider",subTitle: "用以设置指定范围内的值")
                    }
                    NavigationLink(destination: StepperPage()) {
                        PageRow(title: "Stepper",subTitle: "用以增加或减少数值")
                    }

                }
                
                Section(header: Text("布局")) {
                    NavigationLink(destination: HStackPage()) {
                        PageRow(title: "HStack",subTitle: "将子视图排列在水平线上的视图")
                    }
                    NavigationLink(destination: VStackPage()) {
                        PageRow(title: "VStack",subTitle: "将子视图排列在垂直线上的视图")
                    }
                    NavigationLink(destination: ZStackPage()) {
                        PageRow(title: "ZStack",subTitle: "覆盖子视图，在两轴上对齐")
                    }
                    NavigationLink(destination: ListPage()) {
                        PageRow(title: "List",subTitle: "列表容器，用以显示一列数据")
                    }
                    NavigationLink(destination: ScrollViewPage()) {
                        PageRow(title: "ScrollView",subTitle: "滚动视图")
                    }
                    NavigationLink(destination: ForEachPage()) {
                        PageRow(title: "ForEach",subTitle: "用于根据已有数据的集合展示视图")
                    }
                    NavigationLink(destination: GroupPage()) {
                        PageRow(title: "Group",subTitle: "用于集合多个视图，对 Group 设置的属性，将作用于每个子视图")
                    }.frame(height: 80)
                    NavigationLink(destination: SectionPage()) {
                        PageRow(title: "Section",subTitle: "用于创建带头/尾部的视图内容，一般结合 `List` 组件使用")
                    }.frame(height: 80)
                    NavigationLink(destination: FormPage(firstName: "", lastName: "")) {
                           PageRow(title: "Form",subTitle: "表单视图")
                    }
                }
                Section(header: Text("导航视图")) {
                    NavigationLink(destination: NavigationViewPage()) {
                        PageRow(title: "NavigationView",subTitle: "用于创建包含顶部导航栏的视图容器")
                    }
                    NavigationLink(destination: TableViewPage()) {
                        PageRow(title: "TabBar",subTitle: "用于创建包含底部 TabBar 的视图容器")
                    }
                }
                Section(header: Text("Alert 弹框视图")) {
                    NavigationLink(destination: AlertPage()) {
                        PageRow(title: "Alert",subTitle: "展示一个弹框提醒")
                    }
                    NavigationLink(destination: ActionSheetPage()) {
                        PageRow(title: "ActionSheet",subTitle: "弹出一个选择框")
                    }
                    NavigationLink(destination: ModalPage()) {
                        PageRow(title: "Modal",subTitle: "Modal 弹出一个视图")
                    }
                    NavigationLink(destination: PopoverPage()) {
                        PageRow(title: "Popover",subTitle: "Pop 弹出一个视图")
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Example"), displayMode: .large)
            .navigationBarItems(trailing: Button(action: {
                print("Tap")
            }, label: {
                Text("Right").foregroundColor(.orange)
            }))

        }
    }
    
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView().colorScheme(.dark)
    }
}
#endif

