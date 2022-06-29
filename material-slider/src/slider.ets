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
import { SliderModel, SliderType } from './sliderModel'

@Component
export struct MaterialSlider {
  @State obj: SliderModel = undefined

  aboutToAppear() {
    if (this.obj == null || this.obj == undefined) return
  }

  private onSliderChange: ((value: number, mode: SliderChangeMode) => void) = null

  build() {
    Column({ space: '5vp' }) {
      Slider({
        value: this.obj.getCurrentValue(),
        min: this.obj.getMin(),
        max: this.obj.getMax(),
        step: this.obj.getStep(),
        direction: this.obj.getDirection(),
        reverse: this.obj.getReverse(),
        style: this.obj.getSliderStyle()
      })
        .blockColor(this.obj.getBlockColor())
        .trackColor(this.obj.getTrackColor())
        .selectedColor(this.obj.getSelectedColor())
        .trackThickness(this.obj.getTrackThickness())
        .showSteps(this.obj.getShowSteps())
        .showTips(this.obj.getShowTips())
        .onChange((value: number, mode: SliderChangeMode) => {
          this.obj.setCurrentValue(value)
          if (this.onSliderChange != null && this.onSliderChange != undefined) {
            this.onSliderChange(this.obj.getCurrentValue(), mode)
          }
        })
      Row() {
        Column() {
          if (this.obj.getShowMin()) {
            Text(this.obj.getMin().toFixed(0)).fontSize('16fp')
          }
        }.width('33%')

        Column() {
          if (this.obj.getShowValue()) {
            Text(this.obj.getCurrentValue().toFixed(0)).fontSize('16fp')
          }
        }.width('33%')

        Column() {
          if (this.obj.getShowMax()) {
            Text(this.obj.getMax().toFixed(0)).fontSize('16fp')
          }
        }.width('33%')
      }
    }
  }
}

export { SliderModel, SliderType } from './sliderModel'