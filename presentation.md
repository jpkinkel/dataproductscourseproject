presentation
========================================================
author: Joost Kinkel  
date: februari 5, 2017

MPG as a predictor for weight
========================================================

Acme company is interested in investigating whether transmission-type is a good predictor for MPG for a car.

- Use MtCars dataset
- Supply a decent argumentation whether or not the said statement holds true


Data transformation
========================================================

first use transmission as a factor.


```r
carsData <- mtcars
carsData$am <- as.factor(mtcars$am)
levels(carsData$am) <- c("automatic", "manual")
```


Slide With Plot
========================================================

![plot of chunk unnamed-chunk-2](presentation-figure/unnamed-chunk-2-1.png)