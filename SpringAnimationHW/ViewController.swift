//
//  ViewController.swift
//  SpringAnimationHW
//
//  Created by D-Frost on 05.04.2022.
//

import Spring


class ViewController: UIViewController {
    @IBOutlet var animationView:
    SpringView!
    
    @IBOutlet var presentName: UILabel!
    @IBOutlet var curveName: UILabel!
    @IBOutlet var forceName: UILabel!
    @IBOutlet var durationParametr: UILabel!
    @IBOutlet var delayNumber: UILabel!
    @IBOutlet var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    
    func randomPresent() -> String {
        let presentNames = ["slideLeft",
                            "slideRight",
                            "slideDown",
                            "slideUp",
                            "squeezeLeft",
                            "squeezeRight",
                            "squeezeDown",
                            "squeezeUp",
                            "fadeIn",
                            "fadeOut",
                            "fadeOutIn",
                            "fadeInLeft",
                            "fadeInRight",
                            "fadeInDown",
                            "fadeInUp",
                            "zoomIn",
                            "zoomOut",
                            "fall",
                            "shake",
                            "pop",
                            "flipX",
                            "flipY",
                            "morph",
                            "squeeze",
                            "flash",
                            "wobble",
                            "swing",
        ]
        
        let animationType = presentNames.randomElement()
        return animationType!
    }
    
    func randomAnimationCurve() -> String {
        let curvesNames = ["easeIn",
                    "easeOut",
                           "easeInOut",
                           "linear",
                           "spring",
                           "easeInSine",
                           "easeOutSine",
                           "easeInOutSine",
                           "easeInQuad",
                           "easeOutQuad",
                           "easeInOutQuad",
                           "easeInCubic",
                           "easeOutCubic",
                           "easeInOutCubic",
                           "easeInQuart",
                           "easeOutQuart",
                           "easeInOutQuart",
                           "easeInQuint",
                           "easeOutQuint",
                           "easeInOutQuint",
                           "easeInExpo",
                           "easeOutExpo",
                           "easeInOutExpo",
                           "easeInCirc",
                           "easeOutCirc",
                           "easeInOutCirc",
                           "easeInBack",
                           "easeOutBack",
                           "easeInOutBack"]
       
        let curveType = curvesNames.randomElement()
        return curveType!
    }
    
    
    @IBAction func startAnimation(_ sender: SpringButton) {
        animationView.animation = randomPresent()
        animationView.curve = randomAnimationCurve()
        animationView.force = Double.random(in: 0.2...3)
        animationView.duration = Double.random(in: 0.2...3)
        animationView.delay = Double.random(in: 0.2...3)
        animationView.animate()
        
        presentName.text = String(animationView.animation)
        curveName.text = String(animationView.curve)
        
        
        startButton.setTitle(animationView.animation, for: .normal)
        }
        }

