//
//  ViewController.swift
//  ProgrammaticApp-Autolayout-Starter
//
//  Created by Arun Patwardhan on 07/08/19.
//  Copyright © 2019 Amaranthine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationItem.title               = "Feedback"
        self.configureUIElements()
    }
    
    //UI Elements       --------------------------------------------------
    //Title
    var icon            : UIImageView           = UIImageView()
    var appTitle        : UILabel               = UILabel()
    var appView         : UIView                = UIView()
    
    //User information
    var nameField       : UITextField           = UITextField()
    var emailField      : UITextField           = UITextField()
    var age             : UILabel               = UILabel()
    var ageSlider       : UISlider              = UISlider()
    var ageValue        : UILabel               = UILabel()
    var agePicker       : UIDatePicker          = UIDatePicker()
    
    //Opinion Field
    var serviceLbl      : UILabel               = UILabel()
    var serviceRating   : UISegmentedControl    = UISegmentedControl()
    var satisfactionLbl : UILabel               = UILabel()
    var satisfaction    : UISegmentedControl    = UISegmentedControl()
    
    //Actions
    var saveBtn         : UIButton              = UIButton(type: UIButton.ButtonType.roundedRect)
    var fetchBtn        : UIButton              = UIButton(type: UIButton.ButtonType.roundedRect)
    
    //Model             --------------------------------------------------
    var feedbacks       : [FeedbackResponse]    = [FeedbackResponse]()
    
    //Functions         --------------------------------------------------
    /**
     Unified UI Configuration Function
     - important: This function does not perform data validation
     - returns: Void.
     - requires: iOS 12 or later
     - Since: iOS 12
     - author: Arun Patwardhan
     - copyright: Copyright (c) Amaranthine 2015
     - version: 1.0
     - Date: 1st August 2019
     
     **Contact Details**
     
     [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
     [www.amaranthine.in](https://www.amaranthine.in)
     */
    @available(iOS, introduced: 12.0, message: "Unified UI Configuration Function")
    func configureUIElements()
    {
        self.configureTitleELements()
        self.configureUserInfo()
        self.configureOpinionField()
        self.configureButtons()
    }
}

/**
 This extension contains the code that creates the UI Elements
 
 - Author: Arun Patwardhan
 - Version: 1.1
 - Date: 1st August 2019
 
 **Contact Details**
 
 [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
 
 [www.amaranthine.in](https://www.amaranthine.in)
 */
extension ViewController
{
    /**
     Unified UI Configuration Function for the title
     - important: This function does not perform data validation
     - returns: Void.
     - requires: iOS 12 or later
     - Since: iOS 12
     - author: Arun Patwardhan
     - copyright: Copyright (c) Amaranthine 2015
     - version: 1.0
     - Date: 1st August 2019
     
     **Contact Details**
     
     [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
     [www.amaranthine.in](https://www.amaranthine.in)
     */
    @available(iOS, introduced: 12.0, message: "Unified UI Configuration Function for the title")
    func configureTitleELements()
    {
        //Icon
        icon.image                                                  = UIImage(named: "logo.png")
        icon.contentMode                                            = UIView.ContentMode.scaleAspectFit
        icon.clipsToBounds                                          = true
        
        //Title
        appTitle.text                                               = "Feedback"
        appTitle.font                                               = UIFont.boldSystemFont(ofSize: 24.0)
        appTitle.textColor                                          = UIColor.orange
        appTitle.textAlignment                                      = NSTextAlignment.left
        
        //View
        appView.addSubview(appTitle)
    }
    
    /**
     Unified UI Configuration Function user information
     - important: This function does not perform data validation
     - note: The name, email, and age parts of the code are configured.
     - returns: Void.
     - requires: iOS 12 or later
     - Since: iOS 12
     - author: Arun Patwardhan
     - copyright: Copyright (c) Amaranthine 2015
     - version: 1.0
     - Date: 1st August 2019
     
     **Contact Details**
     
     [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
     [www.amaranthine.in](https://www.amaranthine.in)
     */
    @available(iOS, introduced: 12.0, message: "Unified UI Configuration Function for user information")
    func configureUserInfo()
    {
        //Name
        nameField.placeholder                                       = "Enter Name"
        nameField.textColor                                         = UIColor.white
        nameField.textAlignment                                     = NSTextAlignment.left
        nameField.keyboardType                                      = UIKeyboardType.namePhonePad
        nameField.keyboardAppearance                                = UIKeyboardAppearance.dark
        nameField.clearButtonMode                                   = UITextField.ViewMode.always
        nameField.borderStyle                                       = UITextField.BorderStyle.roundedRect
        
        //Email
        emailField.placeholder                                      = "Enter Email"
        emailField.textColor                                        = UIColor.white
        emailField.textAlignment                                    = NSTextAlignment.left
        emailField.keyboardType                                     = UIKeyboardType.namePhonePad
        emailField.keyboardAppearance                               = UIKeyboardAppearance.dark
        emailField.clearButtonMode                                  = UITextField.ViewMode.always
        emailField.borderStyle                                      = UITextField.BorderStyle.roundedRect
        
        //Age
        age.text                                                    = "AGE"
        age.textColor                                               = UIColor.orange
        age.font                                                    = UIFont(name: "Gill Sans", size: 20.0)
        
        ageSlider.maximumValue                                      = 100.0
        ageSlider.minimumValue                                      = 10.0
        ageSlider.value                                             = 10.0
        ageSlider.minimumTrackTintColor                             = UIColor.orange
        ageSlider.maximumTrackTintColor                             = UIColor.gray
        ageSlider.addTarget(self, action: #selector(ViewController.sliderMoved), for: UIControl.Event.valueChanged)
        
        ageValue.text                                               = "0"
        ageValue.textColor                                          = UIColor.white
        ageValue.font                                               = UIFont(name: "Gill Sans", size: 20.0)
        
        agePicker.datePickerMode                                    = UIDatePicker.Mode.date
        agePicker.backgroundColor                                   = UIColor.orange
        agePicker.addTarget(self, action: #selector(ViewController.agePickerChanged), for: UIControl.Event.valueChanged)
    }
    
    /**
     Unified UI Configuration Function rating information
     - important: This function does not perform data validation
     - returns: Void.
     - requires: iOS 12 or later
     - Since: iOS 12
     - author: Arun Patwardhan
     - copyright: Copyright (c) Amaranthine 2015
     - version: 1.0
     - Date: 1st August 2019
     
     **Contact Details**
     
     [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
     [www.amaranthine.in](https://www.amaranthine.in)
     */
    @available(iOS, introduced: 12.0, message: "Unified UI Configuration Function for rating information")
    func configureOpinionField()
    {
        //Service
        serviceLbl.text                                             = "Service"
        serviceLbl.textColor                                        = UIColor.orange
        serviceLbl.font                                             = UIFont(name: "Gill Sans", size: 20.0)
        
        serviceRating.insertSegment(withTitle: "0", at: 0, animated: true)
        serviceRating.insertSegment(withTitle: "1", at: 0, animated: true)
        serviceRating.insertSegment(withTitle: "2", at: 0, animated: true)
        serviceRating.insertSegment(withTitle: "3", at: 0, animated: true)
        serviceRating.insertSegment(withTitle: "5", at: 0, animated: true)
        serviceRating.tintColor                                     = UIColor.orange
        serviceRating.addTarget(self, action: #selector(ViewController.serviceRatingChanged), for: UIControl.Event.valueChanged)
        
        //Satisfaction
        satisfactionLbl.text                                        = "Satisfaction"
        satisfactionLbl.textColor                                   = UIColor.orange
        satisfactionLbl.font                                        = UIFont(name: "Gill Sans", size: 20.0)
        
        satisfaction.insertSegment(withTitle: "0", at: 0, animated: true)
        satisfaction.insertSegment(withTitle: "1", at: 0, animated: true)
        satisfaction.insertSegment(withTitle: "2", at: 0, animated: true)
        satisfaction.insertSegment(withTitle: "3", at: 0, animated: true)
        satisfaction.insertSegment(withTitle: "5", at: 0, animated: true)
        satisfaction.tintColor                                      = UIColor.orange
        satisfaction.addTarget(self, action: #selector(ViewController.satisfactionRatingChanged), for: UIControl.Event.valueChanged)
    }
    
    /**
     Unified UI Configuration Function for buttons
     - important: This function does not perform data validation
     - note: Both, Save & Fetch, buttons are configured.
     - returns: Void.
     - requires: iOS 12 or later
     - Since: iOS 12
     - author: Arun Patwardhan
     - copyright: Copyright (c) Amaranthine 2015
     - version: 1.0
     - Date: 1st August 2019
     
     **Contact Details**
     
     [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
     [www.amaranthine.in](https://www.amaranthine.in)
     */
    @available(iOS, introduced: 12.0, message: "Unified UI Configuration Function for buttons")
    func configureButtons()
    {
        saveBtn.setTitle("Save", for: UIControl.State.normal)
        saveBtn.addTarget(self, action: #selector(ViewController.saveTapped), for: UIControl.Event.touchDown)
        saveBtn.tintColor                                           = UIColor.green
        
        fetchBtn.setTitle("Fetch", for: UIControl.State.normal)
        fetchBtn.addTarget(self, action: #selector(ViewController.fetchTapped), for: UIControl.Event.touchDown)
        fetchBtn.tintColor                                          = UIColor.white
    }
}

/**
 This extension contains the code that holds the different IBActions
 
 - Author: Arun Patwardhan
 - Version: 1.2
 - Date: 1st August 2019
 
 **Contact Details**
 
 [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
 
 [www.amaranthine.in](https://www.amaranthine.in)
 */
extension ViewController
{
    //Target Actions    --------------------------------------------------
    @objc func sliderMoved()
    {
        ageValue.text                                               = "\(Int(ageSlider.value))"
        let interval : TimeInterval                                 = Double(ageSlider.value) * 365.0 * 24.0 * 60.0 * 60.0
        agePicker.date                                              = Date(timeIntervalSinceNow: -(interval))
    }
    
    @objc func agePickerChanged()
    {
        let difference                                              = (((agePicker.date.timeIntervalSinceNow / 60.0) / 60.0) / 24.0) / 365.0
        
        ageValue.text                                               = "\(Int(-difference))"
        ageSlider.value                                             = Float(-difference)
    }
    
    @objc func serviceRatingChanged()
    {
        
    }
    
    @objc func satisfactionRatingChanged()
    {
        
    }
    
    @objc func saveTapped()
    {
        var temp : FeedbackResponse                                 = FeedbackResponse()
        
        temp.age                                                    = agePicker.date
        temp.dateOfSurvey                                           = Date(timeIntervalSinceNow: 0)
        temp.email                                                  = emailField.text!
        temp.name                                                   = nameField.text!
        temp.satisfactionRating.from(integer: satisfaction.selectedSegmentIndex)
        temp.serviceRating.from(integer: serviceRating.selectedSegmentIndex)
        feedbacks.append(temp)
    }
    
    @objc func fetchTapped()
    {
        let destinationController : ListViewController              = ListViewController()
        destinationController.data                                  = feedbacks
        self.navigationController?.pushViewController(destinationController, animated: true)
    }
}

