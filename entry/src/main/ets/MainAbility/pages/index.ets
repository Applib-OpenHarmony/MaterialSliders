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
import { SliderContinue, SliderDiscrete, SliderModel }  from '@ohos/material-slider'

@Entry
@Component
struct Index {
  scroller: Scroller = new Scroller()
  @State message: string = 'Basic Sliders'
  private sliderModel1: SliderModel = new SliderModel(1, "sliderContinue-outset")
  private sliderModel2: SliderModel = new SliderModel(2, "sliderContinue-inset")
  private sliderModel3: SliderModel = new SliderModel(3, "sliderDiscrete-outset")
  private sliderModel4: SliderModel = new SliderModel(4, "sliderDiscrete-inset")

  aboutToAppear() {
    this.sliderModel1.setSliderType("outset")
    this.sliderModel1.setMin(100)
    this.sliderModel1.setMax(1000)
    this.sliderModel1.setStep(1)
    this.sliderModel1.setOutSetValue(500)
    this.sliderModel1.setShowSteps(false)
    this.sliderModel1.setShowTips(true)
    this.sliderModel1.setTrackThickness(8)
    this.sliderModel1.setReverse(false)
    this.sliderModel1.setDirection(Axis.Horizontal)
    this.sliderModel1.setBlockColor("#ff0477ff")
    this.sliderModel1.setTrackColor("#D0D0D0")
    this.sliderModel1.setSelectedColor("#ff0477ff")

    this.sliderModel2.setSliderType("inset")
    this.sliderModel2.setMin(0)
    this.sliderModel2.setMax(100)
    this.sliderModel2.setStep(1)
    this.sliderModel2.setInSetValue(40)
    this.sliderModel2.setShowSteps(false)
    this.sliderModel2.setShowTips(true)
    this.sliderModel2.setTrackThickness(15)
    this.sliderModel2.setReverse(false)
    this.sliderModel2.setDirection(Axis.Horizontal)
    this.sliderModel2.setBlockColor(Color.White)
    this.sliderModel2.setTrackColor("#D0D0D0")
    this.sliderModel2.setSelectedColor("#ff0477ff")

    this.sliderModel3.setSliderType("outset")
    this.sliderModel3.setMin(1000)
    this.sliderModel3.setMax(10000)
    this.sliderModel3.setStep(1000)
    this.sliderModel3.setOutSetValue(3000)
    this.sliderModel3.setShowSteps(true)
    this.sliderModel3.setShowTips(true)
    this.sliderModel3.setTrackThickness(8)
    this.sliderModel3.setReverse(false)
    this.sliderModel3.setDirection(Axis.Horizontal)
    this.sliderModel3.setBlockColor("#ff0477ff")
    this.sliderModel3.setTrackColor("#D0D0D0")
    this.sliderModel3.setSelectedColor("#ff0477ff")

    this.sliderModel4.setSliderType("inset")
    this.sliderModel4.setMin(0)
    this.sliderModel4.setMax(100)
    this.sliderModel4.setStep(10)
    this.sliderModel4.setInSetValue(50)
    this.sliderModel4.setShowSteps(true)
    this.sliderModel4.setShowTips(true)
    this.sliderModel4.setTrackThickness(15)
    this.sliderModel4.setReverse(false)
    this.sliderModel4.setDirection(Axis.Horizontal)
    this.sliderModel4.setBlockColor(Color.White)
    this.sliderModel4.setTrackColor("#D0D0D0")
    this.sliderModel4.setSelectedColor("#ff0477ff")
  }

  build() {
    Scroll(this.scroller) {
      Column() {
        Text(this.message)
          .fontSize(25)
          .fontWeight(FontWeight.Bold)
          .padding(20)
        Row() {
          Divider()
            .color("#D0D0D0")
            .strokeWidth(5)
            .opacity(60)
            .shadow({ radius: 15, color: "#D0D0D0", offsetY: 8 })
            .lineCap(LineCapStyle.Round)
        }.height('5%')

        Slider()
        Text('Outset Continuous Slider').fontSize(20).fontColor("black").width('90%')
        SliderContinue({
          obj: this.sliderModel1
        })
        Text('Inset continuous Slider').fontSize(20).fontColor("black").width('90%')
        SliderContinue({
          obj: this.sliderModel2
        })

        Text('Outset Discrete Slider').fontSize(20).fontColor("black").width('90%')
        SliderDiscrete({
          obj: this.sliderModel3
        })
        Text('Inset Discrete Slider').fontSize(20).fontColor("black").width('90%')
        SliderDiscrete({
          obj: this.sliderModel4
        })

      }.width('100%').padding({ left: 5, right: 5 })
    }.scrollable(ScrollDirection.Vertical).scrollBar(BarState.On)
  }
}