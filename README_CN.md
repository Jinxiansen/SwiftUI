<img src="images/icon/banner.png"/>

[![Build Status](https://img.shields.io/badge/platforms-iOS%20%7C%20tvOS%20%7C%20macOS%20%7C%20watchOS-lightgrey.svg)](https://github.com/Jinxiansen/SwiftUI)
[![Swift](https://img.shields.io/badge/Swift-5.1-orange.svg)](https://swift.org)
[![Xcode](https://img.shields.io/badge/Xcode-11.0-blue.svg)](https://developer.apple.com/xcode)
[![Xcode](https://img.shields.io/badge/macOS-15.0-blue.svg)](https://developer.apple.com/macOS)
[![MIT](https://img.shields.io/badge/licenses-GPL3.0-red.svg)](https://opensource.org/licenses/GPL-3.0)

本文参考 SwiftUI [官方示例](https://github.com/Jinxiansen/SwiftUI/tree/doc) 并将探索结果记录于此，希望能够对你有所帮助。 

对于本文所述内容，默认你已有一定的基于 Swift 语言的开发经验，故不会详细的叙述每个细节；如果对 Swift 语法有疑问，可先学习 [Swift](https://swift.org) 语法。

在了解和使用 `SwiftUI` 过程中，如果有疑问之处，可加入 SwiftUI QQ 交流群：**18552966** ，共同交流。

[English 📔](README.md)

### [Whats New in SwiftUI?](https://developer.apple.com/xcode/swiftui/)


### 💻 SwiftUI 所需环境

- macOS 15 Beta
- Xcode 11.0 Beta
- iOS 13.0 Beta


## 📂 目录：

### 基础控件

* Text 文本
	- [Text](#Text)
	- [TextField](#TextField)
	- [SecureField](#SecureField)

* Image 图片
	- [Image](#Image)


* Button 按钮
	- [Button](#Button)
	- [PullDownButton](#PullDownButton)
	- [ItemBasedPopUpButton](#ItemBasedPopUpButton)
	- [NavigationButton](#NavigationButton)
	- [PresentationButton](#PresentationButton)
	- [EditButton](#EditButton)
	- [PasteButton](#PasteButton)

* Picker
	- [DatePicker](#DatePicker)
	- [Toggle](#Toggle)
	- [Slider](#Slider)
	- [Stepper](#Stepper)
	- [SegmentedControl](#SegmentedControl)

* 其他
	- [WebView](#WebView)
	- [Alert](#Alert)

### 布局
	
* Stacks
	- [HStack](#HStack)
	- [VStack](#VStack)
	- [ZStack](#ZStack)

* List 列表
	- [List](#List)
	- [ScrollView](#ScrollView)
	- [ForEach](#ForEach)

* Container Views 容器视图
	- [Group](#Group)
	- [GroupBox](#GroupBox)
	- [Section](#Section)

* Spacers and Dividers 间距、分割
	- [Spacer](#Spacer)
	- [Divider](#Divider)

* Architectural Views 导航、切换、排列
	- [NavigationView](#NavigationView)
	- [TabbedView](#TabbedView)
	- [HSplitView](#HSplitView)
	- [VSplitView](#VSplitView)

* Presentations 弹框、选择

	- [Alert](#Alert)
	- [Modal](#Modal)
	- [Popover](#Popover)
	- [Sheet](#Sheet)
	- [ActionSheet](#ActionSheet)


### State and Data Flow 状态和数据流

* Bindings
	* [Binding](#Binding)

* Data-Dependent Views 
	* [State](#State)
	* [ObjectBinding](#ObjectBinding)
	* [EnvironmentObject](#EnvironmentObject)

* Environment Values
	* [Environment](#Environment)
	* [EnvironmentValues](#EnvironmentValues)

* Navigation Models
	* [DynamicNavigationDestinationLink](#DynamicNavigationDestinationLink)

* Preferences
	* [LocalizedStringKey](#LocalizedStringKey)

* Transactions
	* [Transaction](#Transaction)


### 手势

* Basic Gestures 基本手势
	* [TapGesture](#TapGesture)
	* [LongPressGesture](#LongPressGesture)
	* [DragGesture](#DragGesture)
	* [MagnificationGesture](#MagnificationGesture)
	* [RotationGesture](#RotationGesture)

* Combined Gestures 合并手势
	* [SequenceGesture](#SequenceGesture)
	* [SimultaneousGesture](#SimultaneousGesture)
	* [ExclusiveGesture](#ExclusiveGesture)

* Custom Gestures 自定义手势
	* [AnyGesture](#AnyGesture)



<h2 id="基础控件">基础控件</h2>


<h4 id="Text">Text</h4>

`Text` 用来展示一行或多行的文本内容，效果等同于 `UILabel`，但更加优秀。
如果要创建 `Text`， 只需通过 `Text("SwiftUI")` 即可创建；
采用链式语法，也可以为文本添加多项属性，如字体、颜色、阴影、上左下右的间距等。

示例：

```swift
Text("SwiftUI")
    .color(.orange)
    .bold()
    .font(.system(.largeTitle))
    .fontWeight(.medium)
    .italic()
    .shadow(color: .black, radius: 1, x: 0, y: 2)
```

<details close>
  <summary>查看运行效果</summary>
  <img width="80%" src="images/example/Text.png"/>
</details>

 
> HStack 和 VStack 控件用于承载多个视图，在后面会提到。

<h4 id="TextField"> TextField </h4>
 
`TextField` 用来添加普通的输入框，一般常用作文本输入。

示例：

```swift

TextField(self.$name, placeholder: self.nameText, onEditingChanged: { changed in
    print("onEditing: \(changed)")
}) {
    print("userName: \(self.name)")
    self.endEditing(true)
}}
.padding(10)
.frame(height: 50)
.textFieldStyle(.roundedBorder)
.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
```

<details close>
  <summary>查看运行效果</summary>
<img width="80%" src="images/example/Field.png"/>
</details>


<h4 id="SecureField"> SecureField </h4>

`SecureField ` 一般作为密码输入时使用，使用方式与 `TextField` 并无差别，示例与运行效果同上 `TextField`。


<h4 id="Image"> Image </h4>

`Image` 控件用于展示图片。

示例：

```swift
Image("icon")
    .resizable()
    .frame(width: Length(100),
           height: Length(100),
           alignment: .center)
```

<details close>
  <summary>查看运行效果</summary>
<img width="80%" src="images/example/Image.png"/>
</details>


<h4 id="Button"> Button </h4>

`Button` 用于响应点击事件。

示例：

```swift
Button(action: {
    print("Tap")
}) {
   Text("I'm a Button")
}
```

<h4 id="PullDownButton"> PullDownButton </h4>

尚未发布

<h4 id="ItemBasedPopUpButton"> ItemBasedPopUpButton </h4>

尚未发布


<h4 id="NavigationButton"> NavigationButton </h4>

`NavigationButtonPage ` 用以 Push 到下一个导航页面。

示例：

```swift
NavigationButton(destination: NavigationButtonPage()) {
    Text("NavigationButton").bold().color(.orange).font(.largeTitle)
    }.navigationBarItem(title: Text("Page"))
```     

<details close>
  <summary>查看运行效果</summary>
<img width="80%" src="images/example/NavigationButton.png"/>
</details>


<h4 id="PresentationButton"> PresentationButton </h4>

`PresentationButton` 用以弹出一个页面。

示例：

```swift
PresentationButton(PageRow(title: "PresentationButton", subTitle: "触发时显示内容的按钮控件"),
                   destination: Text("I'm Text")) {
                    print("Present 🦄")
                   }
```     

<details close>
  <summary>查看运行效果</summary>
<img width="80%" src="images/example/PresentationButton.png"/>
</details>


<h4 id="EditButton"> EditButton </h4>

`EditButton` 用以触发编辑状态，使用时只需在 `navigationBarItems ` 设置即可。

示例：

```swift
navigationBarItems(trailing: EditButton())
```     

<details close>
  <summary>查看运行效果</summary>
<img width="80%" src="images/example/EditButton.png"/>
</details>



<h4 id="PasteButton"> PasteButton </h4> 

尚未发布

 

<h4 id="DatePicker"> DatePicker </h4>

`DatePicker` 用于选择绝对日期的控件。

示例：

```swift
DatePicker(
    $server.date,
    minimumDate: Calendar.current.date(byAdding: .year,
                                       value: -1,
                                       to: server.date),
    maximumDate: Calendar.current.date(byAdding: .year,
                                       value: 1,
                                       to: server.date),
    displayedComponents: .date
)
```     

<details close>
  <summary>查看运行效果</summary>
<img width="80%" src="images/example/DatePicker.png"/>
</details>



<h4 id="Toggle"> Toggle </h4>

`Toggle` 用于切换选中状态。

示例：

```swift
Toggle(isOn: $isOn) {
    Text("State: \(self.isOn == true ? "开":"关")")
}.padding(20)
```     

<details close>
  <summary>查看运行效果</summary>
<img width="80%" src="images/example/Toggle.png"/>
</details>


<h4 id="Slider"> Slider </h4>

`Slider ` 用于从有限值范围中选值的控件。

示例：

```swift
Slider(value: $data.rating)
```     

<details close>
  <summary>查看运行效果</summary>
<img width="80%" src="images/example/Slider.png"/>
</details>
 

<h4 id="Stepper"> Stepper </h4>

`Stepper ` 用以增加或减少数值。

示例：

```swift
Stepper(value: $value, step: 2, onEditingChanged: { c in
    print(c)
}) {
    Text("Stepper Value: \(self.value)")
    }.padding(50)
```

<details close>
  <summary>查看运行效果</summary>
<img width="80%" src="images/example/Stepper.png"/>
</details>



<h4 id="SegmentedControl"> SegmentedControl </h4>

`SegmentedControl` 用以分段条件选择。

示例：

```swift
SegmentedControl(selection: $currentIndex) {
    ForEach(0..<items.count) { index in
        Text(self.items[index]).tag(index)
    }
    }.tapAction {
        print("currentIndex: \(self.currentIndex)")
}
```

<details close>
  <summary>查看完整示例及运行效果</summary>
<img width="80%" src="images/example/SegmentedControl.png"/>
</details>



<h4 id="WebView"> WebView </h4>

`WebView` 用于展示一个打开的网页。

示例:

```swift
struct WebViewPage : UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let req = URLRequest(url: URL(string: "https://www.apple.com")!)
        uiView.load(req)
    }
}
```

<details close>
  <summary>查看运行效果</summary>
<img width="80%" src="images/example/WebView.png"/>
</details>


<h4 id="Alert"> Alert </h4>

`Alert` 用于展示一个弹框提醒，需要与点击事件关联起来。

示例:

```swift
presentation($showsAlert, alert: {
                Alert(title: Text("Hello"))
            })
```

<details close>
  <summary>查看运行效果</summary>
<img width="80%" src="images/example/Alert.png"/>
</details>


### 布局 

<h4 id="HStack"> HStack </h4>

`HStack` 用于将子视图排列在水平线上的视图。

示例:

```swift
HStack {
    Text("made in China.")
    Divider() // Just add a line.
    Text("the People's Republic Of China.")
}
```

<details close>
  <summary>查看运行效果</summary>
<img width="80%" src="images/example/HStack.png"/>
</details>


<h4 id="VStack"> VStack </h4>

`VStack` 用于将子视图排列在垂直线上的视图。

示例:

```swift
VStack {
    Text("made in China.")
    Divider() // Just add a line.
    Text("the People's Republic Of China.")
}
```

<details close>
  <summary>查看运行效果</summary>
<img width="80%" src="images/example/VStack.png"/>
</details>

<h4 id="ZStack"> ZStack </h4>

`ZStack` 用于覆盖子视图，在两轴上对齐。

示例:

```swift
ZStack {
    Text("made in China.")
    Divider() // Just add a line.
    Text("the People's Republic Of China.")
}
```

<details close>
  <summary>查看运行效果</summary>
<img width="80%" src="images/example/ZStack.png"/>
</details>



<h4 id="List"> List </h4>

`List` 列表容器，用以显示一列数据。

示例:

```swift
List(0..<5) { item in
    Text("Hello World !")
}.navigationBarTitle(Text("List"), displayMode: .large)
```

<details close>
  <summary>查看运行效果</summary>
<img width="80%" src="images/example/List.png"/>
</details>


<h4 id="ScrollView"> ScrollView </h4>

`ScrollView` 是一个滚动视图容器。

示例:

```swift
ScrollView {
    Text("SwiftUI").padding(20)
    Divider()
    Image("icon").resizable()
        .frame(width: 300, height: 300, alignment: .center)
    Divider()
    Text("Views and ... user interface.")
    }
    .border(style, width: 1,cornerRadius: 10)
    .padding(10)
    .navigationBarTitle(Text("ScrollView"))
```

<details close>
  <summary>查看运行效果</summary>
<img width="80%" src="images/example/ScrollView.png"/>
</details>

<h4 id="ForEach"> ForEach </h4>

`ForEach` 用于根据已有数据的集合展示视图。

示例:

```swift
let data = (0..<5).map { $0 }
var body: some View {
    ForEach(data) { e in
        Text("Hello \(e)")
            .bold()
            .font(.system(size: 25, design: .monospaced))
            .padding(5)
}
```

<details close>
  <summary>查看运行效果</summary>
<img width="80%" src="images/example/ForEach.png"/>
</details>


## 📎 About

* 以上示例中所涉及代码，皆在本仓库代码中，建议下载并运行查看。
* 如果有关于 SwiftUI 更好的用法与建议，期待能够一起分享！
* 如果本文示例内容有疏漏和错误之处，欢迎提 [**Issue**](https://github.com/Jinxiansen/SwiftUI/issues/new) ！



## ✉️ Contacts

email : hi@jinxiansen.com

微博 : [@晋先森](http://weibo.com/3205872327)


## 📄 License	

SwiftUI is released under the [GPL-3.0 license](LICENSE). See LICENSE for details.