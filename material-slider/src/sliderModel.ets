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
export class SliderModel {
  private sliderId: number = undefined
  private sliderLabel: string | Resource = undefined
  sliderType: string = "outset"
  min: number = 0
  max: number = 100
  step: number = 1
  showSteps: boolean = false
  showTips: boolean = false
  trackThickness: number = undefined
  outSetValue: number = 40
  inSetValue: number = 40
  reverse: boolean = false
  direction: Axis = Axis.Horizontal
  blockColor: string | ResourceColor = "#ff0477ff"
  trackColor: string | ResourceColor = "#D0D0D0"
  selectedColor: string | ResourceColor = "#ff0477ff"
  constructor(id: number, label: string | Resource) {
    this.sliderId = id
    this.sliderLabel = label
  }

  setSliderType(value: string): SliderModel{
    this.sliderType = value
    return this
  }

  getSliderType(): string {
    return this.sliderType
  }

  setMin(value: number): SliderModel{
    this.min = value
    return this
  }

  getMin(): number{
    return this.min
  }

  setMax(value: number): SliderModel{
    this.max = value
    return this
  }

  getMax(): number{
    return this.max
  }

  setStep(value: number): SliderModel{
    this.step = value
    return this
  }

  getStep(): number{
    return this.step
  }

  setShowSteps(value: boolean): SliderModel{
    this.showSteps = value
    return this
  }

  getShowSteps(): boolean{
    return this.showSteps
  }

  setShowTips(value: boolean): SliderModel{
    this.showTips = value
    return this
  }

  getShowTips(): boolean{
    return this.showTips
  }

  setTrackThickness(value: number): SliderModel{
    this.trackThickness = value
    return this
  }

  getTrackThickness(): number{
    return this.trackThickness
  }

  setOutSetValue(value: number): SliderModel{
    this.outSetValue = value
    return this
  }

  getOutSetValue(): number{
    return this.outSetValue
  }

  setInSetValue(value: number): SliderModel{
    this.inSetValue = value
    return this
  }

  getInSetValue(): number{
    return this.inSetValue
  }

  setReverse(value: boolean): SliderModel{
    this.reverse = value
    return this
  }

  getReverse(): boolean{
    return this.reverse
  }

  setDirection(value: Axis): SliderModel{
    this.direction = value
    return this
  }

  getDirection(): Axis{
    return this.direction
  }

  setBlockColor(value: string | ResourceColor): SliderModel{
    this.blockColor = value
    return this
  }

  getBlockColor(): string | ResourceColor{
    return this.blockColor
  }

  setTrackColor(value: string | ResourceColor): SliderModel{
    this.trackColor = value
    return this
  }

  getTrackColor(): string | ResourceColor{
    return this.trackColor
  }

  setSelectedColor(value: string | ResourceColor): SliderModel{
    this.selectedColor = value
    return this
  }

  getSelectedColor(): string | ResourceColor{
    return this.selectedColor
  }
}