# Material_UI_Sliders

It is a slider library in ETS. It contains two types of sliders - continuous and discrete and supports all attributes of ETS slider which are already present in API version 8

## Installation

```npm install https://github.com/Applib-OpenHarmony/Material_UI_Sliders```

## Usage Instruction
To be able to use both sliders below import statement should be used
```ets
import { SliderContinue, SliderDiscrete } from '@ohos/libSlider'
```
If only continuous slider is to be used, then below import statement can be used
```ets
import { SliderContinue } from '@ohos/libSlider'
```
Similarly, if only discrete slider is to be used, then below import statement can be used
```ets
import { SliderDiscrete } from '@ohos/libSlider'
```

## Continuous Slider

![outset](https://github.com/BibekLakra91/Material_UI_Sliders/blob/main/screenshot/outsetSlider.png)
```ets
import { SliderContinue }  from '@ohos/libSlider'
      SliderContinue({
        sliderType : "outset",
        min : 100,
        max: 1000,
        step : 1,
        showSteps : false,
        showTips : true,
        outSetValue : 500,
        trackThickness : 8,
        blockColor : "#ff0477ff",
        trackColor : "#D0D0D0",
        selectedColor : "#ff0477ff"
      })
```

![inset](https://github.com/BibekLakra91/Material_UI_Sliders/blob/main/screenshot/insetSlider.png)
```ets
import { SliderContinue }  from '@ohos/libSlider'
      SliderContinue({
        sliderType : "inset",
        min : 0,
        max: 100,
        step : 1,
        showSteps : false,
        showTips : true,
        inSetValue : 40,
        trackThickness : 15,
        blockColor : Color.White,
        trackColor :  "#D0D0D0",
        selectedColor : "#ff0477ff"
      })
```

## Discrete Slider

![outset_dis](https://github.com/BibekLakra91/Material_UI_Sliders/blob/main/screenshot/outsetSlider_dis.png)
```ets

import { SliderDiscrete }  from '@ohos/libSlider'
      SliderDiscrete({
        sliderType : "outset",
        min : 1000,
        max: 10000,
        step : 1000,
        showSteps : true,
        showTips : true,
        outSetValue : 3000,
        trackThickness : 8,
        blockColor : "#ff0477ff",
        trackColor : "#D0D0D0",
        selectedColor : "#ff0477ff"
      })
```

![inset_dis](https://github.com/BibekLakra91/Material_UI_Sliders/blob/main/screenshot/insetSlider_dis.png)
```ets
import { SliderDiscrete }  from '@ohos/libSlider'
      SliderDiscrete({
        sliderType : "inset",
        min : 0,
        max: 100,
        step : 10,
        showSteps : true,
        showTips : true,
        inSetValue : 40,
        trackThickness : 15,
        blockColor : Color.White,
        trackColor :  "#D0D0D0",
        selectedColor : "#ff0477ff"
      })
```

## Compatibility
Supports OpenHarmony API version 8

### Reference:
Design by : Bibek Lakra
