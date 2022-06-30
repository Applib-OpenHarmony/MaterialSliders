# MaterialSliders

It is a slider library in ETS. It contains two types of sliders - continuous and discrete and supports all attributes of
ETS slider which are already present in OpenHarmony API version 8, along with some extra attributes.

## Installation

```ets 
npm i @ohos/materialslider
```

## Usage Instruction

To be able to use sliders, below import statement should be used

```ets
import { MaterialSlider, SliderModel, SliderType } from '@ohos/materialslider'
```

Access slider attributes through a object of SliderModel and customize the slider(if needed) using setter functions as
shown and finally pass the object to MaterialSlider.
<br>

## Continuous Slider

```ets
import { MaterialSlider, SliderModel, SliderType }  from '@ohos/materialslider'
```

##### 1. Outset

```ets
//Creating object 
private sliderModel: SliderModel = new SliderModel(SliderType.Continue)
```

```ets
//Customization 
aboutToAppear(){
    this.sliderModel.setSliderStyle(SliderStyle.OutSet)
    this.sliderModel.setMin(100)
    this.sliderModel.setMax(1000)
    this.sliderModel.setStep(1)
    this.sliderModel.setCurrentValue(500)
    this.sliderModel.setShowSteps(false)
    this.sliderModel.setShowTips(true)
    this.sliderModel.setTrackThickness(8)
    this.sliderModel.setReverse(false)
    this.sliderModel.setDirection(Axis.Horizontal)
    this.sliderModel.setShowValue(true)
    this.sliderModel.setShowMin(false)
    this.sliderModel.setShowMax(false)
    this.sliderModel.setBlockColor("#ff0477ff")
    this.sliderModel.setTrackColor("#D0D0D0")
    this.sliderModel.setSelectedColor("#ff0477ff")
}    
```

```ets
//Passing parameters to MaterialSlider
MaterialSlider({
    obj : this.sliderModel,
    onCheckChange: this.onCheckChange
})
```

![outset](https://github.com/Applib-OpenHarmony/MaterialSliders/blob/main/screenshot/outsetSlider.png)

##### 2. Inset

```ets
//Creating object 
private sliderModel: SliderModel = new SliderModel(SliderType.Continue)
```

```ets
//Customization 
aboutToAppear(){
    this.sliderModel.setSliderSliderStyle(SliderStyle.InSet)
    this.sliderModel.setMin(0)
    this.sliderModel.setMax(100)
    this.sliderModel.setStep(1)
    this.sliderModel.setCurrentValue(40)
    this.sliderModel.setShowSteps(false)
    this.sliderModel.setShowTips(true)
    this.sliderModel.setTrackThickness(15)
    this.sliderModel.setReverse(false)
    this.sliderModel.setDirection(Axis.Horizontal)
    this.sliderModel.setShowValue(true)
    this.sliderModel.setShowMin(false)
    this.sliderModel.setShowMax(false)
    this.sliderModel.setBlockColor(Color.White)
    this.sliderModel.setTrackColor("#D0D0D0")
    this.sliderModel.setSelectedColor("#ff0477ff")
}    
```

```ets
//Passing parameters to MaterialSlider
MaterialSlider({
    obj : this.sliderModel,
    onCheckChange: this.onCheckChange
})
```

![inset](https://github.com/Applib-OpenHarmony/MaterialSliders/blob/main/screenshot/insetSlider.png)

## Discrete Slider

```ets
import { MaterialSlider, SliderModel, SliderType }  from '@ohos/materialslider'
```

##### 1. Outset

```ets
//Creating object 
private sliderModel: SliderModel = new SliderModel(SliderType.Discrete)
```

```ets
//Customization 
aboutToAppear(){
    this.sliderModel.setSliderStyle(SliderStyle.OutSet)
    this.sliderModel.setMin(1000)
    this.sliderModel.setMax(10000)
    this.sliderModel.setStep(1000)
    this.sliderModel.setCurrentValue(3000)
    this.sliderModel.setShowSteps(true)
    this.sliderModel.setShowTips(true)
    this.sliderModel.setTrackThickness(8)
    this.sliderModel.setReverse(false)
    this.sliderModel.setDirection(Axis.Horizontal)
    this.sliderModel.setShowValue(true)
    this.sliderModel.setShowMin(false)
    this.sliderModel.setShowMax(false)
    this.sliderModel.setBlockColor("#ff0477ff")
    this.sliderModel.setTrackColor("#D0D0D0")
    this.sliderModel.setSelectedColor("#ff0477ff")
}    
```

```ets
//Passing parameters to MaterialSlider
MaterialSlider({
    obj : this.sliderModel,
    onCheckChange: this.onCheckChange
})            
```

![outset_dis](https://github.com/Applib-OpenHarmony/MaterialSliders/blob/main/screenshot/outsetSlider_dis.png)

##### 2. Inset

```ets
//Creating object 
private sliderModel: SliderModel = new SliderModel(SliderType.Discrete)
```

```ets
//Customization 
aboutToAppear(){
    this.sliderModel.setSliderStyle(SliderStyle.InSet)
    this.sliderModel.setMin(0)
    this.sliderModel.setMax(100)
    this.sliderModel.setStep(10)
    this.sliderModel.setCurrentValue(50)
    this.sliderModel.setShowSteps(true)
    this.sliderModel.setShowTips(true)
    this.sliderModel.setTrackThickness(15)
    this.sliderModel.setReverse(false)
    this.sliderModel.setDirection(Axis.Horizontal)
    this.sliderModel.setShowValue(true)
    this.sliderModel.setShowMin(true)
    this.sliderModel.setShowMax(true)
    this.sliderModel.setBlockColor(Color.White)
    this.sliderModel.setTrackColor("#D0D0D0")
    this.sliderModel.setSelectedColor("#ff0477ff")
}    
```

```ets
//Passing parameters to MaterialSlider
MaterialSlider({
    obj : this.sliderModel,
    onCheckChange: this.onCheckChange
})            
```

![inset_dis](https://github.com/Applib-OpenHarmony/MaterialSliders/blob/main/screenshot/insetSlider_dis.png)

## Compatibility

Supports OpenHarmony API version 8

### Reference:

Designed by : Bibek Lakra
