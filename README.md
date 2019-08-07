# ProgrammaticApp-Autolayout-Starter
This is the starter project for all the autolayout projects. 

For more information about how this project was created visit www.arunpatwardhan.com

Specifically https://arunpatwardhan.com/2019/07/28/creating-ios-apps-without-storyboard-part-1/

## NOTE
This project is required for the article on implementing Autolayout programmatically: 


## What are “nibless” apps?

Apps which are designed without the help of Storyboard are called as “Nibless” apps. Normally we design an app with the help of a Storyboard file. Earlier they were called Xib files or Nib files. Hence the term “Nibless”.

## Why should we create Apps without storyboard?

There are a number of reasons.

It makes for a better experience when implementing along with version control.
Allows us to create UI elements dynamically.
Makes reusable UI Components easier to distribute and reuse.

## Are there any benefits of creating apps without storyboard?

The points mentioned in the “why should we make programmatic apps?” section are some of the advantages. Beyond that there aren’t too many. 
If you are looking at a team based project development then this approach is good. 
There is no difference in terms of memory or performance when it comes down to apps design with or without storyboard.

## Are there any drawbacks?

As can be seen from the example above, there are a couple of drawbacks

The main drawback is that you can’t get a quick preview of how your app looks. You have to run the simulation every time you wish to see the end result.
There is a lot more coding involved. Which can be daunting to those who are overly accustomed to designing with the help of storyboards

### Note

A small point. I have left the LaunchScreen.storyboard file. I did not delete it. The reason I did that was to allow the app to allow the system to determine the dimensions on the device. If we do delete the file then the UIScreen.main.bounds return (0.0, 0.0, 320.0, 480.0) which are the old iPhone screen size settings.
While you can go ahead and make changes programmatically it is a lot easier to just leave the LaunchScreen.storyboard file there.

### Contact
www.amaranthine.in
emailto:arun@amaranthine.co.in
