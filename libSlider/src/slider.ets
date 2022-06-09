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
@Component
export struct SliderContinue{
  @State sliderType : string = "outset"
  @State min : number = 0
  @State max : number = 100
  @State step : number = 1
  @State showSteps : boolean = false
  @State showTips : boolean = false
  @State trackThickness : number = 8
  @State outSetValue : number = 40
  @State inSetValue : number = 40
  blockColor : string | ResourceColor = "#ff0477ff"
  trackColor : string | ResourceColor = "#D0D0D0"
  selectedColor : string | ResourceColor = "#ff0477ff"
  build() {
    Column({ space: 5 }) {
      if (this.sliderType == "outset") {
        Text('slider out set').fontSize(20).fontColor("black").width('90%')
        Slider({
          value: this.outSetValue,
          min: this.min,
          max: this.max,
          step: this.step,
          style: SliderStyle.OutSet
        })
          .blockColor(this.blockColor)
          .trackColor(this.trackColor)
          .selectedColor(this.selectedColor)
          .trackThickness(this.trackThickness)
          .showSteps(this.showSteps)
          .showTips(this.showTips)
          .onChange((value: number, mode: SliderChangeMode) => {
            this.outSetValue = value
          })
        Text(this.outSetValue.toFixed(0)).fontSize(16)
      }
      else if(this.sliderType == "inset") {
        Text('slider in set').fontSize(20).fontColor("black").width('90%')
        Slider({
          value: this.inSetValue,
          min: this.min,
          max: this.max,
          step: this.step,
          style: SliderStyle.InSet
        })
          .blockColor(this.blockColor)
          .trackColor(this.trackColor)
          .selectedColor(this.selectedColor)
          .trackThickness(this.trackThickness)
          .showSteps(this.showSteps)
          .showTips(this.showTips)
          .onChange((value: number, mode: SliderChangeMode) => {
            this.inSetValue = value
          })
        Text(this.inSetValue.toFixed(0)).fontSize(16)
      }
    }
  }
}
@Component
export struct SliderDiscrete{
  @State sliderType : string = "outset"
  @State min : number = 0
  @State max : number = 100
  @State step : number = 10
  @State showSteps : boolean = true
  @State showTips : boolean = false
  @State trackThickness : number = 8
  @State outSetValue: number = 40
  @State inSetValue: number = 40
  blockColor : string | ResourceColor = "#ff0477ff"
  trackColor : string | ResourceColor = "#D0D0D0"
  selectedColor : string | ResourceColor = "#ff0477ff"
  build(){
    Column({ space: 5 }) {
      if(this.sliderType == "outset"){
        Text('slider out set - Discrete').fontSize(20).fontColor("black").width('90%')
        Slider({
          value: this.outSetValue,
          min: this.min,
          max: this.max,
          step: this.step,
          style: SliderStyle.OutSet
        })
          .blockColor(this.blockColor)
          .trackColor(this.trackColor)
          .selectedColor(this.selectedColor)
          .trackThickness(this.trackThickness)
          .showSteps(this.showSteps)
          .showTips(this.showTips)
          .onChange((value: number, mode: SliderChangeMode) => {
            this.outSetValue = value
          })
        Text(this.outSetValue.toFixed(0)).fontSize(16)
      }
      else if(this.sliderType == "inset"){
        Text('slider in set - Discrete').fontSize(20).fontColor("black").width('90%')
        Slider({
          value: this.inSetValue,
          min: this.min,
          max: this.max,
          step: this.step,
          style: SliderStyle.InSet,
        })
          .blockColor(this.blockColor)
          .trackColor(this.trackColor)
          .selectedColor(this.selectedColor)
          .trackThickness(this.trackThickness)
          .showSteps(this.showSteps)
          .showTips(this.showTips)
          .onChange((value: number, mode: SliderChangeMode) => {
            this.inSetValue = value
          })
        Text(this.inSetValue.toFixed(0)).fontSize(16)
      }
    }
  }
}
