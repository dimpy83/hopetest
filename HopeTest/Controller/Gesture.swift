//
//  Gesture.swift
//  HopeTest
//
//  Created by Sushma on 14/06/19.
//  Copyright © 2019 Fugenx. All rights reserved.
//

import UIKit
import SceneKit

extension ViewController: UIGestureRecognizerDelegate {
    
    @IBAction func didTap(_ gesture: UITapGestureRecognizer) {
        if state == .scanning {
            scan?.didTap(gesture)
        }
        
        instructionsVisible = false
    }
    
    @IBAction func didOneFingerPan(_ gesture: UIPanGestureRecognizer) {
        if state == .scanning {
            scan?.didOneFingerPan(gesture)
        }
        
        instructionsVisible = false
    }
    
    @IBAction func didTwoFingerPan(_ gesture: ThresholdPanGestureRecognizer) {
        if state == .scanning {
            scan?.didTwoFingerPan(gesture)
        }
        
        instructionsVisible = false
    }
    
    @IBAction func didRotate(_ gesture: ThresholdRotationGestureRecognizer) {
        if state == .scanning {
            scan?.didRotate(gesture)
        }
        
        instructionsVisible = false
    }
    
    @IBAction func didLongPress(_ gesture: UILongPressGestureRecognizer) {
        if state == .scanning {
            scan?.didLongPress(gesture)
        }
        
        instructionsVisible = false
    }
    
    @IBAction func didPinch(_ gesture: ThresholdPinchGestureRecognizer) {
        if state == .scanning {
            scan?.didPinch(gesture)
        }
        
        instructionsVisible = false
    }
    
    func gestureRecognizer(_ first: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith second: UIGestureRecognizer) -> Bool {
        if first is UIRotationGestureRecognizer && second is UIPinchGestureRecognizer {
            return true
        } else if first is UIRotationGestureRecognizer && second is UIPanGestureRecognizer {
            return true
        } else if first is UIPinchGestureRecognizer && second is UIRotationGestureRecognizer {
            return true
        } else if first is UIPinchGestureRecognizer && second is UIPanGestureRecognizer {
            return true
        } else if first is UIPanGestureRecognizer && second is UIPinchGestureRecognizer {
            return true
        } else if first is UIPanGestureRecognizer && second is UIRotationGestureRecognizer {
            return true
        }
        return false
    }
}
