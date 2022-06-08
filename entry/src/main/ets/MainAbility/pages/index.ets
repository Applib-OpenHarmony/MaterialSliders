import { SliderContinue, SliderDiscrete }  from '@ohos/libSlider'
@Entry
@Component
struct Index {
  @State message: string = 'Basic Sliders'
  @State sliderType : string = ""
  build() {
    Column() {
      Text(this.message)
        .fontSize(25)
        .fontWeight(FontWeight.Bold)
        .padding(20)
      Row(){
        Divider()
          .color("#D0D0D0")
          .strokeWidth(5)
          .opacity(60)
          .shadow({ radius : 15, color : "#D0D0D0",offsetY: 8})
          .lineCap(LineCapStyle.Round)
      }.height('5%')
      SliderContinue({
        sliderType : "outset",
        min : 100,
        max: 1000,
        step : 1,
        showSteps : false,
        showTips : true,
        outSetValue : 500,
        trackThickness : 8,
        blockColor : "#ff0477ff",
        trackColor : "#D0D0D0",
        selectedColor : "#ff0477ff"
      })
      SliderContinue({
        sliderType : "inset",
        min : 0,
        max: 100,
        step : 1,
        showSteps : false,
        showTips : true,
        inSetValue : 40,
        trackThickness : 15,
        blockColor : Color.White,
        trackColor :  "#D0D0D0",
        selectedColor : "#ff0477ff"
      })
      SliderDiscrete({
        sliderType : "outset",
        min : 1000,
        max: 10000,
        step : 1000,
        showSteps : true,
        showTips : true,
        outSetValue : 3000,
        trackThickness : 8,
        blockColor : "#ff0477ff",
        trackColor : "#D0D0D0",
        selectedColor : "#ff0477ff"
      })
      SliderDiscrete({
        sliderType : "inset",
        min : 0,
        max: 100,
        step : 10,
        showSteps : true,
        showTips : true,
        inSetValue : 40,
        trackThickness : 15,
        blockColor : Color.White,
        trackColor :  "#D0D0D0",
        selectedColor : "#ff0477ff"
      })
    }.width('100%').padding({ left:5, right:5 })
  }
}