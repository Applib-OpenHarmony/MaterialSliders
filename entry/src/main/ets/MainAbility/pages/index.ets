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
import { MaterialSlider, SliderModel, SliderType }  from '@ohos/material-slider'

@Entry
@Component
struct Index {
  scroller1: Scroller = new Scroller()
  scroller2: Scroller = new Scroller()
  @State message: string = 'Basic Sliders'
  @State isShow1: boolean = false
  @State isShow2: boolean = false
  @State isShow3: boolean = false
  @State isShow4: boolean = false
  private sliderModel1: SliderModel = new SliderModel(SliderType.Continue)
  private sliderModel2: SliderModel = new SliderModel(SliderType.Continue)
  private sliderModel3: SliderModel = new SliderModel(SliderType.Discrete)
  private sliderModel4: SliderModel = new SliderModel(SliderType.Discrete)

  private onCheckChange(value: number, mode: SliderChangeMode) {
    console.log("Value: " + value + ", Mode: " + mode)
  }

  aboutToAppear() {
    this.sliderModel1.setSliderStyle(SliderStyle.OutSet)
    this.sliderModel1.setMin(-10)
    this.sliderModel1.setMax(10)
    this.sliderModel1.setStep(3)
    this.sliderModel1.setCurrentValue(500)
    this.sliderModel1.setShowSteps(false)
    this.sliderModel1.setShowTips(true)
    this.sliderModel1.setTrackThickness(8)
    this.sliderModel1.setReverse(false)
    this.sliderModel1.setShowValue(true)
    this.sliderModel1.setShowMin(true)
    this.sliderModel1.setShowMax(true)
    this.sliderModel1.setDirection(Axis.Horizontal)
    this.sliderModel1.setBlockColor("#ff0477ff")
    this.sliderModel1.setTrackColor("#D0D0D0")
    this.sliderModel1.setSelectedColor("#ff0477ff")

    this.sliderModel2.setSliderStyle(SliderStyle.InSet)
    this.sliderModel2.setMin(0)
    this.sliderModel2.setMax(100)
    this.sliderModel2.setCurrentValue(40)
    this.sliderModel2.setShowTips(true)
    this.sliderModel2.setTrackThickness(15)
    this.sliderModel2.setReverse(false)
    this.sliderModel2.setShowValue(true)
    this.sliderModel2.setShowMin(false)
    this.sliderModel2.setShowMax(false)
    this.sliderModel2.setDirection(Axis.Horizontal)
    this.sliderModel2.setBlockColor(Color.White)
    this.sliderModel2.setTrackColor("#D0D0D0")
    this.sliderModel2.setSelectedColor("#ff0477ff")

    this.sliderModel3.setSliderStyle(SliderStyle.OutSet)
    this.sliderModel3.setMin(1000)
    this.sliderModel3.setMax(10000)
    this.sliderModel3.setStep(1000)
    this.sliderModel3.setShowValue(true)
    this.sliderModel3.setShowMin(true)
    this.sliderModel3.setShowMax(true)

    this.sliderModel4.setSliderStyle(SliderStyle.InSet)
    this.sliderModel4.setMin(0)
    this.sliderModel4.setMax(10)
    this.sliderModel4.setStep(2)
    this.sliderModel4.setCurrentValue(50)
    this.sliderModel4.setShowSteps(true)
    this.sliderModel4.setShowTips(true)
    this.sliderModel4.setTrackThickness(15)
    this.sliderModel4.setReverse(false)
    this.sliderModel4.setShowValue(true)
    this.sliderModel4.setShowMin(true)
    this.sliderModel4.setShowMax(true)
    this.sliderModel4.setDirection(Axis.Horizontal)
    this.sliderModel4.setBlockColor(Color.White)
    this.sliderModel4.setTrackColor("#D0D0D0")
    this.sliderModel4.setSelectedColor("#ff0477ff")
  }

  build() {
    Scroll(this.scroller1) {
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

        Row() {
          Column() {
            Button('Continuous-outset')
              .margin(5)
              .type(ButtonType.Normal)
              .borderRadius(2)
              .fontColor(Color.Black)
              .backgroundColor("#D0D0D0")
              .onClick(() => {
                this.isShow1 = !this.isShow1
                this.isShow2 = false
                this.isShow3 = false
                this.isShow4 = false
              })
            Button('Continuous-inset')
              .margin(5)
              .type(ButtonType.Normal)
              .borderRadius(2)
              .fontColor(Color.Black)
              .backgroundColor("#D0D0D0")
              .onClick(() => {
                this.isShow2 = !this.isShow2
                this.isShow1 = false
                this.isShow3 = false
                this.isShow4 = false
              })
          }

          Column() {
            Button('Discrete-outset')
              .margin(5)
              .type(ButtonType.Normal)
              .borderRadius(2)
              .fontColor(Color.Black)
              .backgroundColor("#D0D0D0")
              .onClick(() => {
                this.isShow3 = !this.isShow3
                this.isShow2 = false
                this.isShow1 = false
                this.isShow4 = false
              })
            Button('Discrete-inset')
              .margin(5)
              .type(ButtonType.Normal)
              .borderRadius(2)
              .fontColor(Color.Black)
              .backgroundColor("#D0D0D0")
              .onClick(() => {
                this.isShow4 = !this.isShow4
                this.isShow2 = false
                this.isShow3 = false
                this.isShow1 = false
              })
          }
        }.margin({ bottom: 10 })

        if (this.isShow1) {
          Text('Outset Continuous Slider').fontSize(20).fontColor("black").width('90%')
          MaterialSlider({
            obj: this.sliderModel1,
            onCheckChange: this.onCheckChange
          })
        }
        if (this.isShow2) {
          Text('Inset continuous Slider').fontSize(20).fontColor("black").width('90%')
          MaterialSlider({
            obj: this.sliderModel2,
            onCheckChange: this.onCheckChange
          })
        }
        if (this.isShow3) {
          Text('Outset Discrete Slider').fontSize(20).fontColor("black").width('90%')
          MaterialSlider({
            obj: this.sliderModel3,
            onCheckChange: this.onCheckChange
          })
        }
        if (this.isShow4) {
          Text('Inset Discrete Slider').fontSize(20).fontColor("black").width('90%')
          MaterialSlider({
            obj: this.sliderModel4,
            onCheckChange: this.onCheckChange
          })
        }
      }.width('100%').padding({ left: 5, right: 5 })
    }.scrollable(ScrollDirection.Vertical).scrollBar(BarState.On)
  }
}