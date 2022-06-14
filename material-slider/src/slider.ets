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
import { SliderModel } from '@ohos/material-slider'

@Component
export struct SliderContinue {
  @State obj: SliderModel = new SliderModel(1, "sliderContinue")

  build() {
    Column({ space: 5 }) {
      if (this.obj.getSliderType() == "outset") {
        Slider({
          value: this.obj.getOutSetValue(),
          min: this.obj.getMin(),
          max: this.obj.getMax(),
          step: this.obj.getStep(),
          direction: this.obj.getDirection(),
          reverse: this.obj.getReverse(),
          style: SliderStyle.OutSet
        })
          .blockColor(this.obj.getBlockColor())
          .trackColor(this.obj.getTrackColor())
          .selectedColor(this.obj.getSelectedColor())
          .trackThickness(this.obj.getTrackThickness())
          .showSteps(this.obj.getShowSteps())
          .showTips(this.obj.getShowTips())
          .onChange((value: number, mode: SliderChangeMode) => {
            this.obj.setOutSetValue(value)
          })
        Row() {
          Column() {
            if (this.obj.getShowMin()) {
              Text(this.obj.getMin().toFixed(0)).fontSize(16)
            }
          }.width('33%')

          Column() {
            if (this.obj.getShowValue()) {
              Text(this.obj.getOutSetValue().toFixed(0)).fontSize(16)
            }
          }.width('33%')

          Column() {
            if (this.obj.getShowMax()) {
              Text(this.obj.getMax().toFixed(0)).fontSize(16)
            }
          }.width('33%')
        }
      }
      else if (this.obj.getSliderType() == "inset") {
        Slider({
          value: this.obj.getInSetValue(),
          min: this.obj.getMin(),
          max: this.obj.getMax(),
          step: this.obj.getStep(),
          direction: this.obj.getDirection(),
          reverse: this.obj.getReverse(),
          style: SliderStyle.InSet,
        })
          .blockColor(this.obj.getBlockColor())
          .trackColor(this.obj.getTrackColor())
          .selectedColor(this.obj.getSelectedColor())
          .trackThickness(this.obj.getTrackThickness())
          .showSteps(this.obj.getShowSteps())
          .showTips(this.obj.getShowTips())
          .onChange((value: number, mode: SliderChangeMode) => {
            this.obj.setInSetValue(value)
          })
        Row() {
          Column() {
            if (this.obj.getShowMin()) {
              Text(this.obj.getMin().toFixed(0)).fontSize(16)
            }
          }.width('33%')

          Column() {
            if (this.obj.getShowValue()) {
              Text(this.obj.getInSetValue().toFixed(0)).fontSize(16)
            }
          }.width('33%')

          Column() {
            if (this.obj.getShowMax()) {
              Text(this.obj.getMax().toFixed(0)).fontSize(16)
            }
          }.width('33%')
        }
      }
    }
  }
}

@Component
export struct SliderDiscrete {
  @State obj: SliderModel = new SliderModel(2, "sliderDiscrete")

  build() {
    Column({ space: 5 }) {
      if (this.obj.getSliderType() == "outset") {
        Slider({
          value: this.obj.getOutSetValue(),
          min: this.obj.getMin(),
          max: this.obj.getMax(),
          step: this.obj.getStep(),
          direction: this.obj.getDirection(),
          reverse: this.obj.getReverse(),
          style: SliderStyle.OutSet
        })
          .blockColor(this.obj.getBlockColor())
          .trackColor(this.obj.getTrackColor())
          .selectedColor(this.obj.getSelectedColor())
          .trackThickness(this.obj.getTrackThickness())
          .showSteps(this.obj.getShowSteps())
          .showTips(this.obj.getShowTips())
          .onChange((value: number, mode: SliderChangeMode) => {
            this.obj.setOutSetValue(value)
          })
        Row() {
          Column() {
            if (this.obj.getShowMin()) {
              Text(this.obj.getMin().toFixed(0)).fontSize(16)
            }
          }.width('33%')

          Column() {
            if (this.obj.getShowValue()) {
              Text(this.obj.getOutSetValue().toFixed(0)).fontSize(16)
            }
          }.width('33%')

          Column() {
            if (this.obj.getShowMax()) {
              Text(this.obj.getMax().toFixed(0)).fontSize(16)
            }
          }.width('33%')
        }
      }
      else if (this.obj.getSliderType() == "inset") {
        Slider({
          value: this.obj.getInSetValue(),
          min: this.obj.getMin(),
          max: this.obj.getMax(),
          step: this.obj.getStep(),
          direction: this.obj.getDirection(),
          reverse: this.obj.getReverse(),
          style: SliderStyle.InSet,
        })
          .blockColor(this.obj.getBlockColor())
          .trackColor(this.obj.getTrackColor())
          .selectedColor(this.obj.getSelectedColor())
          .trackThickness(this.obj.getTrackThickness())
          .showSteps(this.obj.getShowSteps())
          .showTips(this.obj.getShowTips())
          .onChange((value: number = null, mode: SliderChangeMode) => {
            this.obj.setInSetValue(value)
          })
        Row() {
          Column() {
            if (this.obj.getShowMin()) {
              Text(this.obj.getMin().toFixed(0)).fontSize(16)
            }
          }.width('33%')

          Column() {
            if (this.obj.getShowValue()) {
              Text(this.obj.getInSetValue().toFixed(0)).fontSize(16)
            }
          }.width('33%')

          Column() {
            if (this.obj.getShowMax()) {
              Text(this.obj.getMax().toFixed(0)).fontSize(16)
            }
          }.width('33%')
        }
      }
    }
  }
}

export { SliderModel } from "./sliderModel"