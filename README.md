# Material_UI_Sliders

It is a slider library in ETS. It contains two types of sliders - continuous and discrete and supports all attributes of
ETS slider which are already present in API version 8

## Installation

```ets 
npm install https://github.com/Applib-OpenHarmony/Material_UI_Sliders
```

## Usage Instruction

To be able to use both sliders, below import statement should be used

```ets
import { SliderContinue, SliderDiscrete, SliderModel } from '@ohos/material-slider'
```

Access slider attributes through a object of SliderModel and customize the slider(if needed) using set functions as
shown and finally pass the object to SliderContinue or SliderDiscrete.
<br>

**Note:** SliderModel is mandatory to import because the user can only modify the slider from object of SliderModel
class. And the user can import SliderContinue or SliderDiscrete or both, ont the basis of slider requirement. The user
can customise the slider from set functions or can use default slider provided.

```ets
Set Functions --> Working
Slider Attributes:
-setSliderType --> assign value to 'sliderType'
-setMin --> assign value to 'min'
-setMax --> assign value to 'max'
-setStep --> assign value to 'step'
-setShowSteps --> assign value to 'showSteps'
-setShowTips --> assign value to 'showTips'
-setTrackThickness --> assign value to 'trackThickness'
-setReverse --> assign value to 'reverse'
-setDirection --> assign value to 'direction'
-setBlockColor --> assign value to 'blockColor'
-setTrackColor --> assign value to 'trackColor'
-setSelectedColor --> assign value to 'selectedColor'

Custom Attributes:
-setOutSetValue --> assign default value to outset type slider
-setInSetValue --> assign default value to inset type slider
-setShowValue --> decide whether to show current value of slider or not
-setShowMin --> decide whether to show minimum value of slider or not
-setShowMax --> decide whether to show maximum value of slider or not
```

## Continuous Slider

```ets
import { SliderContinue, SliderModel }  from '@ohos/material-slider'
```

##### 1. Outset

```ets
//Creating object
private sliderModel: SliderModel = new SliderModel(1, "sliderContinue-outset")
```

```ets
//Customization - optional
aboutToAppear(){
    this.sliderModel.setSliderType("outset")
    this.sliderModel.setMin(100)
    this.sliderModel.setMax(1000)
    this.sliderModel.setStep(1)
    this.sliderModel.setOutSetValue(500)
    this.sliderModel.setShowSteps(false)
    this.sliderModel.setShowTips(true)
    this.sliderModel.setTrackThickness(8)
    this.sliderModel.setReverse(false)
    this.sliderModel.setDirection(Axis.Horizontal)
    this.sliderModel.setBlockColor("#ff0477ff")
    this.sliderModel.setTrackColor("#D0D0D0")
    this.sliderModel.setSelectedColor("#ff0477ff")
}    
```

```ets
//Passing Customized/Non-customized object to SliderContinue
SliderContinue({
    obj : this.sliderModel
})
```

![outset](https://github.com/BibekLakra91/Material_UI_Sliders/blob/main/screenshot/outsetSlider.png)

##### 2. Inset

```ets
//Creating object
private sliderModel: SliderModel = new SliderModel(2, "sliderContinue-inset")
```

```ets
//Customization - optional
aboutToAppear(){
    this.sliderModel.setSliderType("inset")
    this.sliderModel.setMin(0)
    this.sliderModel.setMax(100)
    this.sliderModel.setStep(1)
    this.sliderModel.setInSetValue(40)
    this.sliderModel.setShowSteps(false)
    this.sliderModel.setShowTips(true)
    this.sliderModel.setTrackThickness(15)
    this.sliderModel.setReverse(false)
    this.sliderModel.setDirection(Axis.Horizontal)
    this.sliderModel.setBlockColor(Color.White)
    this.sliderModel.setTrackColor("#D0D0D0")
    this.sliderModel.setSelectedColor("#ff0477ff")
}    
```

```ets
//Passing Customized/Non-customized object to SliderContinue
SliderContinue({
    obj : this.sliderModel
})
```

![inset](https://github.com/BibekLakra91/Material_UI_Sliders/blob/main/screenshot/insetSlider.png)

## Discrete Slider

```ets
import { SliderDiscrete, SliderModel }  from '@ohos/material-slider'
```

##### 1. Outset

```ets
//Creating object
private sliderModel: SliderModel = new SliderModel(1, "sliderDiscrete-outset")
```

```ets
//Customization - optional
aboutToAppear(){
    this.sliderModel.setSliderType("outset")
    this.sliderModel.setMin(1000)
    this.sliderModel.setMax(10000)
    this.sliderModel.setStep(1000)
    this.sliderModel.setOutSetValue(3000)
    this.sliderModel.setShowSteps(true)
    this.sliderModel.setShowTips(true)
    this.sliderModel.setTrackThickness(8)
    this.sliderModel.setReverse(false)
    this.sliderModel.setDirection(Axis.Horizontal)
    this.sliderModel.setBlockColor("#ff0477ff")
    this.sliderModel.setTrackColor("#D0D0D0")
    this.sliderModel.setSelectedColor("#ff0477ff")
}    
```

```ets
SliderDiscrete({
    obj : this.sliderModel
})            
```

![outset_dis](https://github.com/BibekLakra91/Material_UI_Sliders/blob/main/screenshot/outsetSlider_dis.png)

##### 2. Inset

```ets
//Creating object
private sliderModel: SliderModel = new SliderModel(2, "sliderDiscrete-inset")
```

```ets
//Customization - optional
aboutToAppear(){
    this.sliderModel.setSliderType("inset")
    this.sliderModel.setMin(0)
    this.sliderModel.setMax(100)
    this.sliderModel.setStep(10)
    this.sliderModel.setInSetValue(50)
    this.sliderModel.setShowSteps(true)
    this.sliderModel.setShowTips(true)
    this.sliderModel.setTrackThickness(15)
    this.sliderModel.setReverse(false)
    this.sliderModel.setDirection(Axis.Horizontal)
    this.sliderModel.setBlockColor(Color.White)
    this.sliderModel.setTrackColor("#D0D0D0")
    this.sliderModel.setSelectedColor("#ff0477ff")
}    
```

```ets
SliderDiscrete({
    obj : this.sliderModel
})            
```

![inset_dis](https://github.com/BibekLakra91/Material_UI_Sliders/blob/main/screenshot/insetSlider_dis.png)

## Compatibility

Supports OpenHarmony API version 8

### Reference:

Design by : Bibek Lakra
