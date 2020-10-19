BMI Calculation
========================================================
author: LJW
date: 19-OCT-2020
autosize: true


Overview
========================================================

The project was to create a simple Shiny application -  Body Mass Index (BMI) Calculator.

Know Your BMI
There are many ways to measure body fat. However, the simplest is by calculating your Body Mass Index (BMI). BMI measures the relationship between your weight and height to calculate the amount of body fat you have. The higher your BMI, the higher the amount of fat in your body.

![plot of chunk unnamed-chunk-1](./image01.gif)

Are you in the healthy range? Use this tool to calculate your Body Mass Index (BMI) now to know your health risk.


BMI Calculation
========================================================

![plot of chunk unnamed-chunk-2](./calculate_your_bmi.jpg)

*Source Code*

```r
cal_BMI <- function(weight,height) 
    {weight/(height^2)}
```

BMI Ranges
========================================================

![plot of chunk unnamed-chunk-4](./bmi_ranges.jpg)

*Source Code*

```r
range_BMI <- function(weight,height){
    BMI <- cal_BMI(weight, height)
    ifelse(BMI <18.5,"Risk of nutritional deficiency diseases and osteoporosis",
           ifelse(BMI<23,"Low Risk - Healthy Range",
           ifelse(BMI<27.4,"Moderate Risk","High Risk")))
}
```


App UI
========================================================
![plot of chunk unnamed-chunk-6](./UI.jpg)

Enter your weight and height and click "Calculate BMI" button.


Links
========================================================

## BMI Calculator
To use the BMI Calculator app please click the link 
<a href=https://jwlee1304.shinyapps.io/CalculateBMI/>here</a>.
<br>
<br>
To view the source code pertaining to the project please head to 
<a href='https://github.com/jwlee1304/Course-Project-Shiny-Application-and-Reproducible-Pitch'>github</a>.
<br>
<br>
To know more about the BMI [Health Hub](https://www.healthhub.sg/live-healthy/410/Healthy%20Weight)
<br>
<br>
Thanks!
