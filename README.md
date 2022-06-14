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
Access slider attributes through a object of SliderModel and 
customize the slider(if needed) using set functions as shown and finally pass the object 
to SliderContinue or SliderDiscrete.
<br>

**Note:** SliderModel is mandatory to import because the user can only modify the slider from object of SliderModel
class. And the user can import SliderContinue or SliderDiscrete or both, ont the basis of slider requirement. The user
can customise the slider from set functions or can use default slider provided.

**Note:** Set functions are used to pass value to corresponding slider attributes. For example :
setMin(value) will map 'value' to min, where min is a slider attribute.

**Note:** setOutSetValue() and setInSetValue() are two function do not map to any slider attribute, rather they pass
values which are used to set default values of outset type and inset type slider respectively.

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
