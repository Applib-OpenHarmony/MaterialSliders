/*
 * Copyright (c) 2022 Application Library Engineering Group.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
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
      Text('Outset Continuous Slider').fontSize(20).fontColor("black").width('90%')
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
      Text('Inset continuous Slider').fontSize(20).fontColor("black").width('90%')
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
      Text('Outset Discrete Slider').fontSize(20).fontColor("black").width('90%')
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
      Text('Inset Discrete Slider').fontSize(20).fontColor("black").width('90%')
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
