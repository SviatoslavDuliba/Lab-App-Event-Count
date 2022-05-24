//
//  ViewController.swift
//  AppEventCount
//
//  Created by Duliba Sviatoslav on 24.05.2022.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Outlet
    @IBOutlet var didFinishLaunchingLabel: UILabel!
    @IBOutlet var configurationForConnectinLabel: UILabel!
    @IBOutlet var willConnectLabel: UILabel!
    @IBOutlet var sceneDidBecomeActiveLabel: UILabel!
    @IBOutlet var WillResignActiveLabel: UILabel!
    @IBOutlet var willEnterForegroundLabel: UILabel!
    @IBOutlet var didEnterBackgroundLabel: UILabel!
    
    //MARK: - Properties
    var willConnectCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateView(){
        didFinishLaunchingLabel.text = "The App has launched \(appDelegate.launchCount) time(s)"
        configurationForConnectinLabel.text = "The App has connecting \(appDelegate.configurationForConnectingCount) time(s)"
        willConnectLabel.text = "The App will connect  \(willConnectCount) time(s)"
        sceneDidBecomeActiveLabel.text = "The App was active  \(didBecomeActiveCount) time(s)"
        WillResignActiveLabel.text = "The App will resign active \(willResignActiveCount) time(s)"
        willEnterForegroundLabel.text = "The App will enter foreground \(willEnterForegroundCount) time(s)"
        didEnterBackgroundLabel.text = "The App has entered background \(didEnterBackgroundCount) time(s)"
    }
}

