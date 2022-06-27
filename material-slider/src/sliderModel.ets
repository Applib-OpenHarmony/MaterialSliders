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
export enum SliderType {
  Continue,
  Discrete
}

export class SliderModel {
  private sliderType: SliderType = undefined
  private sliderStyle: SliderStyle = undefined
  private min: number = undefined
  private max: number = undefined
  private step: number = undefined
  private showSteps: boolean = undefined
  private showTips: boolean = undefined
  private trackThickness: Length = undefined
  private currentValue: number = undefined
  private reverse: boolean = undefined
  private direction: Axis = undefined
  private showMin: boolean = false
  private showMax: boolean = false
  private showValue: boolean = false
  private blockColor: string | ResourceColor = undefined
  private trackColor: string | ResourceColor = "#D0D0D0"
  private selectedColor: string | ResourceColor = "#ff0477ff"
  constructor(value: SliderType) {
    if (value != null || value != undefined) this.sliderType = value
    else this.error('sliderType')
  }

  error(msg: string) {
    console.error(msg + ' is a mandatory attribute')
  }

  getSliderType(): SliderType{
    return this.sliderType
  }

  setSliderStyle(value: SliderStyle) {
    if (value != null) this.sliderStyle = value
    if (this.sliderStyle == null || this.sliderStyle == undefined) this.error('sliderStyle')
  }

  getSliderStyle(): SliderStyle {
    return this.sliderStyle
  }

  setMin(value: number) {
    this.min = (value != null) ? value : 0
    if (this.min == null || this.min == undefined) this.error('min')
  }

  getMin(): number{
    return this.min
  }

  setMax(value: number) {
    this.max = value
    if (this.max == null || this.max == undefined) this.error('max')
  }

  getMax(): number{
    return this.max
  }

  setStep(value: number) {
    if (this.sliderType == SliderType.Continue) this.step = undefined
    else this.step = (value == null || value == undefined || value <= 1) ? 5 : value
  }

  getStep(): number{
    return this.step
  }

  setShowSteps(value: boolean) {
    if (this.sliderType == SliderType.Discrete) this.showSteps = (value == null || value == undefined) ? true : value
    else this.showSteps = (value == null || value == undefined) ? false : value
  }

  getShowSteps(): boolean{
    return this.showSteps
  }

  setShowTips(value: boolean) {
    this.showTips = (value == null || value == undefined) ? false : value
  }

  getShowTips(): boolean{
    return this.showTips
  }

  setTrackThickness(value: Length) {
    if (this.sliderStyle == SliderStyle.InSet) this.trackThickness = (value == null || value <= 0 || value == undefined) ? '15vp' : value
    else this.trackThickness = (value == null || value <= 0 || value == undefined) ? '8vp' : value
  }

  getTrackThickness(): Length{
    return this.trackThickness
  }

  setCurrentValue(value: number) {
    var auto = this.max
    if (value != null && value < this.min) auto = this.min
    else if (value != null && value > this.max) auto = this.max
    this.currentValue = (value == null || value == undefined || value > this.max || value < this.min) ? auto : value
  }

  getCurrentValue(): number{
    return this.currentValue
  }

  setReverse(value: boolean) {
    this.reverse = (value == null || value == undefined) ? false : value
  }

  getReverse(): boolean{
    return this.reverse
  }

  setDirection(value: Axis) {
    this.direction = (value == null || value == undefined) ? Axis.Horizontal : value
  }

  getDirection(): Axis{
    return this.direction
  }

  setBlockColor(value: string | ResourceColor) {
    if (this.sliderStyle == SliderStyle.InSet) this.blockColor = (value == null || value == undefined) ? Color.White : value
    else this.blockColor = (value == null || value == undefined) ? "#ff0477ff" : value
  }

  getBlockColor(): string | ResourceColor{
    if (this.blockColor == null || this.blockColor == undefined) this.setBlockColor(null)
    return this.blockColor
  }

  setTrackColor(value: string | ResourceColor) {
    this.trackColor = (value == null || value == undefined) ? "#D0D0D0" : value
  }

  getTrackColor(): string | ResourceColor{
    return this.trackColor
  }

  setSelectedColor(value: string | ResourceColor) {
    this.selectedColor = (value == null || value == undefined) ? "#ff0477ff" : value
  }

  getSelectedColor(): string | ResourceColor{
    return this.selectedColor
  }

  setShowMin(value: boolean) {
    this.showMin = (value == null || value == undefined) ? false : value
  }

  getShowMin(): boolean{
    return this.showMin
  }

  setShowMax(value: boolean) {
    this.showMax = (value == null || value == undefined) ? false : value
  }

  getShowMax(): boolean{
    return this.showMax
  }

  setShowValue(value: boolean) {
    this.showValue = (value == null || value == undefined) ? false : value
  }

  getShowValue(): boolean{
    return this.showValue
  }
}