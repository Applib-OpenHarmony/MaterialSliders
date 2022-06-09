# Material_UI_Sliders

Modified slider library design in openharmony.

## Install Slider Lib using:

```npm i ohos-libSlider```

Details about OpenHarmony NPM environment configuration, see at [here](https://gitee.com/openharmony-tpc/docs/blob/master/OpenHarmony_npm_usage.md)

## Usage Instructions

Import all components at once

```ets
import { SliderContinue, SliderDiscrete }  from '@ohos/libSlider'
```

Use respective components to create below slider design.

## Slider Design: 

## Continuous Slider: 

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

## Discrete Slider: 

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


## Compatibility
Supports OpenHarmony API version 8

## Code Contribution
If you find any problems during usage, you can submit an Issue to us. Of course, we also welcome you to send us PR.

## Open source License
This project is based on Apache License 2.0, please enjoy and participate in open source freely.

### Reference:
Design by : Bibek Lakra
