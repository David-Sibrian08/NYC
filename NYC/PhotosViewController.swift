//
//  PhotosViewController.swift
//  NYC
//
//  Created by Sibrian on 8/22/16.
//  Copyright © 2016 Sibrian. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    
    @IBOutlet weak var photosImageView: UIImageView!
    
    var NYCimages:[String] = ["brooklynBridge.jpg", "skylineDay.jpg", "skylineNight.jpg", "timesSquare.jpg", "statueOfLiberty.jpg"]
    
    let MAX_ELEMENT = 4
    
    var imageIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(PhotosViewController.performGesture(_:)))
        rightSwipe.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(rightSwipe)
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(PhotosViewController.performGesture(_:)))
        leftSwipe.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(leftSwipe)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func performGesture(gesture: UIGestureRecognizer) {
        
        if let gesture = gesture as? UISwipeGestureRecognizer {
            switch gesture.direction {
            case UISwipeGestureRecognizerDirection.Right:
                imageIndex -= 1
                if imageIndex < 0 {
                    imageIndex = 0
                }
                photosImageView.image = UIImage(named: NYCimages[imageIndex])
                
            case UISwipeGestureRecognizerDirection.Left:
                imageIndex += 1
                if imageIndex > MAX_ELEMENT {
                    imageIndex = MAX_ELEMENT
                }
                photosImageView.image = UIImage(named: NYCimages[imageIndex])
                
            default:
                break
            }
        }
    }
    
    @IBAction func backButtonPressed(sender: UIButton) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}
