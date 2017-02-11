import UIKit
import FaceTracker
import AVFoundation

@available(iOS 10.0, *)
class ViewController: UIViewController, FaceTrackerViewControllerDelegate {
    
    let imagePicker = UIImagePickerController()
    
    //Heissenberg
    var hatView = UIImageView()
    var sunglassView = UIImageView()
    var mustageView = UIImageView()
    
    //Pirate
    var pirateHatView = UIImageView()
    var piercingView = UIImageView()
    var eyepatchView = UIImageView()
    var shipView = UIImageView()
    
    //Clown
    var rainbowView = UIImageView()
    var clownNoseView = UIImageView()
    var clownHairView = UIImageView()
    var leftStarView = UIImageView()
    var rightStarView = UIImageView()
    
    //Party
    var partyHatView = UIImageView()
    var balloonsView = UIImageView()
    
    var faceTrackerViewController: FaceTrackerViewController?
    var pointViews = [UIView]()
    
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var optionsButton: UIButton!
    @IBOutlet var faceTrackerContainerView: UIView!
    
    @IBOutlet var bottomToolbar: UIToolbar!
    
    @IBOutlet var partyButton: UIBarButtonItem!
    @IBOutlet var clownButton: UIBarButtonItem!
    @IBOutlet var wwButton: UIBarButtonItem!
    @IBOutlet var pirateButton: UIBarButtonItem!
    
    
    
    @IBAction func showPirate(_ sender: Any) {
        if (pirateButton.tintColor == UIColor(red:0.882, green:0.722, blue:0.169, alpha:1)) {
            pirateButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
            pirateHatView.isHidden = true
            eyepatchView.isHidden = true
            piercingView.isHidden = true
        } else {
            pirateButton.tintColor = UIColor(red:0.882, green:0.722, blue:0.169, alpha:1)
            partyButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
            wwButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
            clownButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
            sunglassView.isHidden = true
            hatView.isHidden = true
            mustageView.isHidden = true
            rainbowView.isHidden = true
            clownNoseView.isHidden = true
            clownHairView.isHidden = true
            partyHatView.isHidden = true
            balloonsView.isHidden = true
            leftStarView.isHidden = true
            rightStarView.isHidden = true
            leftStarView.layer.removeAllAnimations()
            rightStarView.layer.removeAllAnimations()
        }
    }
    
    @IBAction func showWW(_ sender: Any) {
        if (wwButton.tintColor == UIColor(red:0.882, green:0.722, blue:0.169, alpha:1)) {
            wwButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
            sunglassView.isHidden = true
            hatView.isHidden = true
            mustageView.isHidden = true
        } else {
            wwButton.tintColor = UIColor(red:0.882, green:0.722, blue:0.169, alpha:1)
            partyButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
            pirateButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
            clownButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
            pirateHatView.isHidden = true
            eyepatchView.isHidden = true
            piercingView.isHidden = true
            rainbowView.isHidden = true
            clownNoseView.isHidden = true
            clownHairView.isHidden = true
            partyHatView.isHidden = true
            balloonsView.isHidden = true
            leftStarView.isHidden = true
            rightStarView.isHidden = true
            leftStarView.layer.removeAllAnimations()
            rightStarView.layer.removeAllAnimations()
        }
    }
    
    @IBAction func showParty(_ sender: Any) {
        if (partyButton.tintColor == UIColor(red:0.882, green:0.722, blue:0.169, alpha:1)) {
            partyButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
            partyHatView.isHidden = true
            balloonsView.isHidden = true

        } else {
            partyButton.tintColor = UIColor(red:0.882, green:0.722, blue:0.169, alpha:1)
            pirateButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
            clownButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
            wwButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
            pirateHatView.isHidden = true
            eyepatchView.isHidden = true
            piercingView.isHidden = true
            sunglassView.isHidden = true
            hatView.isHidden = true
            mustageView.isHidden = true
            rainbowView.isHidden = true
            clownNoseView.isHidden = true
            clownHairView.isHidden = true
            leftStarView.isHidden = true
            rightStarView.isHidden = true
            leftStarView.layer.removeAllAnimations()
            rightStarView.layer.removeAllAnimations()
            self.balloonsView.alpha = 0.0
            
            
            UIView.animate(withDuration: 1.5, delay: 0.5, options: [.repeat, .autoreverse], animations: {
                self.balloonsView.alpha = 1.0
                self.balloonsView.alpha = 1.0
                self.balloonsView.alpha = 1.0})
        }
    }
    
    @IBAction func showClown(_ sender: Any) {
        if (clownButton.tintColor == UIColor(red:0.882, green:0.722, blue:0.169, alpha:1)) {
            clownButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
            rainbowView.isHidden = true
            clownNoseView.isHidden = true
            clownHairView.isHidden = true
            leftStarView.isHidden = true
            rightStarView.isHidden = true
            leftStarView.layer.removeAllAnimations()
            rightStarView.layer.removeAllAnimations()
        } else {
            clownButton.tintColor = UIColor(red:0.882, green:0.722, blue:0.169, alpha:1)
            partyButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
            pirateButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
            wwButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
            pirateHatView.isHidden = true
            eyepatchView.isHidden = true
            piercingView.isHidden = true
            sunglassView.isHidden = true
            hatView.isHidden = true
            mustageView.isHidden = true
            partyHatView.isHidden = true
            balloonsView.isHidden = true
            
            UIView.animate(withDuration: 1.5, delay: 0.5, options: [.repeat, .autoreverse, .curveLinear], animations: {
                self.leftStarView.transform = self.leftStarView.transform.rotated(by: CGFloat(M_PI))
                self.leftStarView.alpha = 1.0
                self.leftStarView.alpha = 1.0
                self.leftStarView.alpha = 1.0})
            
            UIView.animate(withDuration: 1.5, delay: 0.5, options: [.repeat, .autoreverse, .curveLinear], animations: {
                self.rightStarView.transform = self.rightStarView.transform.rotated(by: CGFloat(M_PI))
                self.rightStarView.alpha = 1.0
                self.rightStarView.alpha = 1.0
                self.rightStarView.alpha = 1.0})
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.insertSubview(hatView, aboveSubview: faceTrackerContainerView)
        //hatView.image = UIImage(named: "hat")
        hatView.image = UIImage(named: "hat")
        self.view.insertSubview(sunglassView, aboveSubview: faceTrackerContainerView)
        sunglassView.image = UIImage(named: "sunglass")
        
        self.view.insertSubview(rainbowView, aboveSubview: faceTrackerContainerView)
        rainbowView.image = UIImage(named: "rainbow")
        
        self.view.insertSubview(mustageView, aboveSubview: faceTrackerContainerView)
        mustageView.image = UIImage(named: "mustage")
        
        //Pirate
        self.view.insertSubview(pirateHatView, aboveSubview: faceTrackerContainerView)
        self.view.insertSubview(piercingView, aboveSubview: faceTrackerContainerView)
        self.view.insertSubview(eyepatchView, aboveSubview: faceTrackerContainerView)
        self.view.insertSubview(shipView, aboveSubview: faceTrackerContainerView)

        pirateHatView.image = UIImage(named: "pirate-hat")
        piercingView.image = UIImage(named: "piercing")
        eyepatchView.image = UIImage(named: "eye-patch")
        shipView.image = UIImage(named: "ship")
        
        clownHairView.image = UIImage(named: "clownHair")
        clownNoseView.image = UIImage(named: "clownNose")
        leftStarView.image = UIImage(named: "star")
        rightStarView.image = UIImage(named: "star")
        
        self.view.insertSubview(clownHairView, aboveSubview: faceTrackerContainerView)
        self.view.insertSubview(clownNoseView, aboveSubview: faceTrackerContainerView)
        self.view.insertSubview(leftStarView, aboveSubview: faceTrackerContainerView)
        self.view.insertSubview(rightStarView, aboveSubview: faceTrackerContainerView)
        
        partyHatView.image = UIImage(named: "partyHat")
        self.view.insertSubview(partyHatView, aboveSubview: faceTrackerContainerView)
        balloonsView.image = UIImage(named: "balloons")
        self.view.insertSubview(balloonsView, aboveSubview: faceTrackerContainerView)
        
        shipView.alpha = 1
        shipView.isHidden = false
        pirateButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
        partyButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
        wwButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
        clownButton.tintColor = UIColor(red:0.00, green:0.00, blue:0.255, alpha:1)
        

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        faceTrackerViewController!.startTracking { () -> Void in
            self.activityIndicator.stopAnimating()
        }
        
        bottomToolbar.isHidden = false

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "embedFaceTrackerViewController") {
            faceTrackerViewController = segue.destination as? FaceTrackerViewController
            faceTrackerViewController!.delegate = self
        }
    }

    @IBOutlet weak var cameraView: UIView!
    var captureSession = AVCaptureSession();
    var sessionOutput = AVCapturePhotoOutput();
    var sessionOutputSetting = AVCapturePhotoSettings(format: [AVVideoCodecKey:AVVideoCodecJPEG]);
    var previewLayer = AVCaptureVideoPreviewLayer();
    
    @IBAction func optionsButtonPressed(_ sender: UIButton) {
        let alert = UIAlertController()
        alert.popoverPresentationController?.sourceView = optionsButton
        
        alert.addAction(UIAlertAction(title: "Swap Camera", style: .default, handler: { (action) -> Void in
            self.faceTrackerViewController!.swapCamera()
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        
        alert.addAction(UIAlertAction(title: "Take Picture", style: .default, handler: { (action) -> Void
            in

            if let wnd = self.view{
                let v = UIView(frame: wnd.bounds)
                v.backgroundColor = UIColor.white
                v.alpha = 1
                
                wnd.addSubview(v)
                UIView.animate(withDuration: 1, animations: {
                    v.alpha = 0.0
                }, completion: {(finished:Bool) in
                    v.removeFromSuperview()
                })
            }
            
            self.optionsButton.isHidden = true
            self.bottomToolbar.isHidden = true
            let screenShot = UIApplication.shared.screenShot!
            UIImageWriteToSavedPhotosAlbum(screenShot, nil, nil, nil)
            self.optionsButton.isHidden = false
            self.bottomToolbar.isHidden = false
        }))
        
        alert.addAction(UIAlertAction(title: "Share Picture", style: .default, handler: {(action) -> Void in
            self.optionsButton.isHidden = true
            self.bottomToolbar.isHidden = true
            let screenShot = UIApplication.shared.screenShot!
            self.optionsButton.isHidden = false
            self.bottomToolbar.isHidden = false
            let imageToShare = [ screenShot ]
            let activityViewController = UIActivityViewController(activityItems: imageToShare, applicationActivities: nil)
            activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash
            
            // exclude some activity types from the list (optional)
            activityViewController.excludedActivityTypes = [ UIActivityType.airDrop, UIActivityType.postToFacebook ]
            
            // present the view controller
            self.present(activityViewController, animated: true, completion: nil)
        }))
    }
    
    func setAnchorPoint(_ anchorPoint: CGPoint, forView view: UIView) {
        var newPoint = CGPoint(x: view.bounds.size.width * anchorPoint.x, y: view.bounds.size.height * anchorPoint.y)
        var oldPoint = CGPoint(x: view.bounds.size.width * view.layer.anchorPoint.x, y: view.bounds.size.height * view.layer.anchorPoint.y)
        
        newPoint = newPoint.applying(view.transform)
        oldPoint = oldPoint.applying(view.transform)
        
        var position = view.layer.position
        position.x -= oldPoint.x
        position.x += newPoint.x
        
        position.y -= oldPoint.y
        position.y += newPoint.y
        
        view.layer.position = position
        view.layer.anchorPoint = anchorPoint
    }
    
    func faceTrackerDidUpdate(_ points: FacePoints?) {
        
        if let points = points {
            // Allocate some views for the points if needed
            if (pointViews.count == 0) {
                let numPoints = points.getTotalNumberOFPoints()
                for _ in 0...numPoints {
                    let view = UIView()
                    //view.backgroundColor = UIColor.green
                    self.view.addSubview(view)
                    
                    pointViews.append(view)
                }
            }
            
            // Set frame for each point view
            points.enumeratePoints({ (point, index) -> Void in
                let pointView = self.pointViews[index]
                let pointSize: CGFloat = 4
                
                pointView.isHidden = false
                pointView.frame = CGRect(x: point.x - pointSize / 2, y: point.y - pointSize / 2, width: pointSize, height: pointSize).integral
            })
            
            
            //pirate
            if (pirateButton.tintColor == UIColor(red:0.882, green:0.722, blue:0.169, alpha:1)) {
                
                // Compute the hat frame
                let eyeCornerDist = sqrt(pow(points.leftEye[0].x - points.rightEye[5].x, 2) + pow(points.leftEye[0].y - points.rightEye[5].y, 2))
                let eyeToEyeCenter = CGPoint(x: (points.leftEye[0].x + points.rightEye[5].x) / 2, y: (points.leftEye[0].y + points.rightEye[5].y) / 2)
                
                let hatWidth = 2.5 * eyeCornerDist
                let hatHeight = (pirateHatView.image!.size.height / pirateHatView.image!.size.width) * hatWidth
                
                pirateHatView.transform = CGAffineTransform.identity
                
                pirateHatView.frame = CGRect(x: eyeToEyeCenter.x - hatWidth / 2, y: eyeToEyeCenter.y - 1.2 * hatHeight, width: hatWidth, height: hatHeight)
                pirateHatView.isHidden = false
                
                setAnchorPoint(CGPoint(x: 0.5, y: 0.5), forView: pirateHatView)
                
                let angle = atan2(points.rightEye[5].y - points.leftEye[0].y, points.rightEye[5].x - points.leftEye[0].x)
                pirateHatView.transform = CGAffineTransform(rotationAngle: angle)
                
                //Eye-patch frame
                let eyeDist = sqrt(pow(points.leftEye[0].x - points.leftEye[5].x, 2) + pow(points.leftEye[0].y - points.leftEye[5].y, 2))
                let eyeCenter = CGPoint(x: (points.leftEye[0].x + points.leftEye[5].x) / 2, y: (points.leftEye[0].y + points.leftEye[5].y) / 2)
                let sunglassWidth = 2.5 * eyeDist
                let sunglassHeight = (eyepatchView.image!.size.height / eyepatchView.image!.size.width) * sunglassWidth
                
                eyepatchView.transform = CGAffineTransform.identity
                eyepatchView.frame = CGRect(x: eyeCenter.x - sunglassWidth / 2, y:eyeCenter.y - 0.5 * sunglassHeight, width: sunglassWidth, height: sunglassHeight)
                eyepatchView.isHidden = false
                
                setAnchorPoint(CGPoint(x: 0.5, y: 1.0), forView: eyepatchView)
                
                let angleSunglass = atan2(points.rightEye[5].y - points.leftEye[0].y, points.rightEye[5].x - points.leftEye[0].x)
                eyepatchView.transform = CGAffineTransform(rotationAngle: angleSunglass)
                
                //piercing frame
                
                let noseCornerDist = sqrt(pow(points.nose[5].x - points.nose[6].x,2) + pow(points.nose[5].y - points.nose[6].y,2))
                let noseCenter = CGPoint(x: (points.nose[5].x + points.nose[6].x) / 2, y: (points.nose[5].y + points.nose[6].y) / 2)
                
                let piercingWidth = 1.2 * noseCornerDist
                let piercingHeight = (piercingView.image!.size.height / piercingView.image!.size.width) * piercingWidth
                
                piercingView.transform = CGAffineTransform.identity
                piercingView.frame = CGRect(x: noseCenter.x - piercingWidth / 2, y:noseCenter.y - 0.05 * piercingHeight, width: piercingWidth, height: piercingHeight)
                
                piercingView.isHidden = false
                setAnchorPoint(CGPoint(x:0.5, y:0.5), forView: piercingView)
            } else if (wwButton.tintColor == UIColor(red:0.882, green:0.722, blue:0.169, alpha:1)) {
                // Walter White
                let eyeCornerDist = sqrt(pow(points.leftEye[0].x - points.rightEye[5].x, 2) + pow(points.leftEye[0].y - points.rightEye[5].y, 2))
                let eyeToEyeCenter = CGPoint(x: (points.leftEye[0].x + points.rightEye[5].x) / 2, y: (points.leftEye[0].y + points.rightEye[5].y) / 2)
                let sunglassWidth = 1.5 * eyeCornerDist
                let sunglassHeight = (sunglassView.image!.size.height / sunglassView.image!.size.width) * sunglassWidth
                sunglassView.transform = CGAffineTransform.identity
                sunglassView.frame = CGRect(x: eyeToEyeCenter.x - sunglassWidth / 2, y:eyeToEyeCenter.y - 0.5 * sunglassHeight, width: sunglassWidth, height: sunglassHeight)
                sunglassView.isHidden = false
                setAnchorPoint(CGPoint(x: 0.5, y: 1.0), forView: sunglassView)
                let angleSunglass = atan2(points.rightEye[5].y - points.leftEye[0].y, points.rightEye[5].x - points.leftEye[0].x)
                sunglassView.transform = CGAffineTransform(rotationAngle: angleSunglass)
                
                let hatWidth = 2.5 * eyeCornerDist
                let hatHeight = (hatView.image!.size.height / hatView.image!.size.width) * hatWidth
                hatView.transform = CGAffineTransform.identity
                hatView.frame = CGRect(x: eyeToEyeCenter.x - hatWidth / 2, y: eyeToEyeCenter.y - 1.5 * hatHeight, width: hatWidth, height: hatHeight)
                hatView.isHidden = false
                
                setAnchorPoint(CGPoint(x: 0.5, y: 0.8), forView: hatView)
                
                let angle = atan2(points.rightEye[5].y - points.leftEye[0].y, points.rightEye[5].x - points.leftEye[0].x)
                hatView.transform = CGAffineTransform(rotationAngle: angle)
                
                

                let noseCornerDist = sqrt(pow(points.outerMouth[0].x - points.outerMouth[6].x,2) + pow(points.outerMouth[3].y - points.outerMouth[0].y,2))
                let noseCenter = CGPoint(x: (points.outerMouth[0].x + points.outerMouth[6].x)/2, y: (points.outerMouth[3].y - points.outerMouth[0].y) / 2)
                
                let mustageWidth = 1.5 * noseCornerDist
                let mustageHeight = (mustageView.image!.size.height / mustageView.image!.size.width) * mustageWidth
                
                mustageView.transform = CGAffineTransform.identity
                mustageView.frame = CGRect(x: noseCenter.x - mustageWidth / 2, y:points.outerMouth[3].y - 0.05 * points.outerMouth[3].y , width: mustageWidth, height: mustageHeight)
                
                mustageView.isHidden = false
                setAnchorPoint(CGPoint(x:0.5, y: 0.5), forView: mustageView)
                
                let angleMustage = atan2(points.outerMouth[6].y - points.outerMouth[0].y, points.outerMouth[6].x - points.outerMouth[0].x)
                mustageView.transform = CGAffineTransform(rotationAngle: angleMustage)
                
            } else if (clownButton.tintColor == UIColor(red:0.882, green:0.722, blue:0.169, alpha:1)) {
            
                //Clown
                if ((points.innerMouth[7].y - points.innerMouth[1].y) > 15 ) {
                    let mouthCornerDist = sqrt(pow(points.innerMouth[0].x - points.innerMouth[4].x, 2) + pow(points.innerMouth[0].y - points.innerMouth[4].y, 2))
                    let mouthCenter = CGPoint(x: (points.innerMouth[0].x + points.innerMouth[4].x) / 2, y: (points.innerMouth[2].y))
                    let rainbowWidth = mouthCornerDist
                    let rainbowHeight = (rainbowView.image!.size.height / rainbowView.image!.size.width) * rainbowWidth
                
                    rainbowView.transform = CGAffineTransform.identity
                    rainbowView.frame = CGRect(x:mouthCenter.x - rainbowWidth / 2, y:points.innerMouth[0].y, width: rainbowWidth, height: rainbowHeight)
                    rainbowView.isHidden = false
                    setAnchorPoint(CGPoint(x: 0.5, y: 0.5), forView: rainbowView)
                
                    let angleRainbow = atan2(points.innerMouth[0].y - points.innerMouth[4].y, points.innerMouth[0].x - points.innerMouth[4].x)
                    rainbowView.transform = CGAffineTransform(rotationAngle: angleRainbow)
                } else {
                    rainbowView.isHidden = true
                }
                let eyeCornerDist = sqrt(pow(points.leftEye[0].x - points.rightEye[5].x, 2) + pow(points.leftEye[0].y - points.rightEye[5].y, 2))
                let eyeToEyeCenter = CGPoint(x: (points.leftEye[0].x + points.rightEye[5].x) / 2, y: (points.leftEye[0].y + points.rightEye[5].y) / 2)
                
                let hairWidth = 2.5 * eyeCornerDist
                let hairHeight = (clownHairView.image!.size.height / clownHairView.image!.size.width) * hairWidth
                clownHairView.transform = CGAffineTransform.identity
                clownHairView.frame = CGRect(x: eyeToEyeCenter.x - hairWidth / 2, y:eyeToEyeCenter.y - 0.8 * hairHeight, width: hairWidth, height: hairHeight)
                clownHairView.isHidden = false
                setAnchorPoint(CGPoint(x: 0.5, y: 1.0), forView: clownHairView)
                let angleHair = atan2(points.rightEye[5].y - points.leftEye[0].y, points.rightEye[5].x - points.leftEye[0].x)
                clownHairView.transform = CGAffineTransform(rotationAngle: angleHair)
                
                let noseCornerDist = sqrt(pow(points.nose[1].x - points.nose[5].x, 2) + pow(points.nose[1].y - points.nose[5].y, 2))
                let noseCenter = CGPoint(x: points.nose[3].x, y:(points.nose[1].y + points.nose[5].y)/2)
                let noseWidth = noseCornerDist
                let noseHeight = ((clownNoseView.image?.size.height)! / (clownNoseView.image?.size.width)!) * noseWidth
                clownNoseView.transform = CGAffineTransform.identity
                clownNoseView.frame = CGRect(x: noseCenter.x - noseWidth / 2, y:noseCenter.y - 0.8 * noseHeight, width: noseWidth, height: noseHeight)
                clownNoseView.isHidden = false
                setAnchorPoint(CGPoint(x: 0.5, y: 1.0), forView: clownNoseView)
                let angleNose = atan2(points.nose[5].y - points.nose[0].y, points.nose[5].x - points.nose[0].x)
                clownNoseView.transform = CGAffineTransform(rotationAngle: angleNose)
                
                //left eye
                let eyeLeftCornerDist = sqrt(pow(points.leftEye[0].x - points.leftEye[5].x, 2) + pow(points.leftEye[0].y - points.leftEye[5].y, 2))
                let eyeLeftCenter = CGPoint(x: (points.leftEye[0].x + points.leftEye[5].x) / 2, y: (points.leftEye[0].y + points.leftEye[5].y) / 2)
                
                let starLeftWidth = eyeLeftCornerDist
                let starLeftHeight = (leftStarView.image!.size.height / leftStarView.image!.size.width) * starLeftWidth
                leftStarView.transform = CGAffineTransform.identity
                leftStarView.frame = CGRect(x: eyeLeftCenter.x - starLeftWidth / 1.5, y:eyeLeftCenter.y - 0.4 * starLeftHeight, width: starLeftWidth, height: starLeftHeight)
                leftStarView.isHidden = false
                setAnchorPoint(CGPoint(x: 0.5, y: 0.5), forView: leftStarView)
                let angleLeftStar = atan2(points.leftEye[5].y - points.leftEye[0].y, points.leftEye[5].x - points.leftEye[0].x)
                leftStarView.transform = CGAffineTransform(rotationAngle: angleLeftStar)

                
                //right eye
                let eyeRightCornerDist = sqrt(pow(points.rightEye[0].x - points.rightEye[5].x, 2) + pow(points.rightEye[0].y - points.rightEye[5].y, 2))
                let eyeRightCenter = CGPoint(x: (points.rightEye[0].x + points.rightEye[5].x) / 2, y: (points.rightEye[0].y + points.rightEye[5].y) / 2)
                
                let starRightWidth = eyeRightCornerDist
                let starRightHeight = (rightStarView.image!.size.height / rightStarView.image!.size.width) * starRightWidth
                
                rightStarView.transform = CGAffineTransform.identity
                rightStarView.frame = CGRect(x: eyeRightCenter.x - starRightWidth / 1.5, y:eyeRightCenter.y - 0.4 * starRightHeight, width: starRightWidth, height: starRightHeight)
                rightStarView.isHidden = false
                setAnchorPoint(CGPoint(x: 0.5, y: 0.5), forView: rightStarView)
                let angleRightStar = atan2(points.rightEye[5].y - points.rightEye[0].y, points.rightEye[5].x - points.rightEye[0].x)
                rightStarView.transform = CGAffineTransform(rotationAngle: angleRightStar)

                
                
                
                
            } else if (partyButton.tintColor == UIColor(red:0.882, green:0.722, blue:0.169, alpha:1)) {
                let eyeCornerDist = sqrt(pow(points.leftEye[0].x - points.rightEye[5].x, 2) + pow(points.leftEye[0].y - points.rightEye[5].y, 2))
                let eyeToEyeCenter = CGPoint(x: (points.leftEye[0].x + points.rightEye[5].x) / 2, y: (points.leftEye[0].y + points.rightEye[5].y) / 2)
                
                let hairWidth = 1.8 * eyeCornerDist
                let hairHeight = (partyHatView.image!.size.height / partyHatView.image!.size.width) * hairWidth
                partyHatView.transform = CGAffineTransform.identity
                partyHatView.frame = CGRect(x: eyeToEyeCenter.x - hairWidth / 2, y:eyeToEyeCenter.y -  hairHeight/0.9, width: hairWidth, height: hairHeight)
                partyHatView.isHidden = false
                setAnchorPoint(CGPoint(x: 0.5, y: 1.0), forView: partyHatView)
                let angleHair = atan2(points.rightEye[5].y - points.leftEye[0].y, points.rightEye[5].x - points.leftEye[0].x)
                partyHatView.transform = CGAffineTransform(rotationAngle: angleHair)
                
                let leftEyeDist = sqrt(pow(points.leftEye[0].x - points.leftEye[5].x, 2) + pow(points.leftEye[0].y - points.leftEye[5].y, 2))
                let leftEyeCenter = CGPoint(x: (points.leftEye[0].x + points.leftEye[5].x) / 2, y: (points.leftEye[0].y + points.leftEye[5].y) / 2)
                
                let leftBalloonWidth = 1.5 * leftEyeDist
                let leftBalloonHeight = (balloonsView.image!.size.height / balloonsView.image!.size.width) * leftBalloonWidth
                balloonsView.transform = CGAffineTransform.identity
                balloonsView.frame = CGRect(x:(leftEyeCenter.x - leftBalloonWidth) / 2, y:(leftEyeCenter.y - leftBalloonHeight) / 2, width: leftBalloonWidth, height: leftBalloonHeight)
                balloonsView.isHidden = false
                setAnchorPoint(CGPoint(x: 1.0, y: 1.0), forView: balloonsView)
                let leftBalloonAngle = atan2(points.leftEye[5].y - points.leftEye[0].y, points.leftEye[5].x - points.leftEye[0].x)
                balloonsView.transform = CGAffineTransform(rotationAngle: leftBalloonAngle)
                
            }
        } else {
            pirateHatView.isHidden = true
            eyepatchView.isHidden = true
            piercingView.isHidden = true
            
            hatView.isHidden = true
            sunglassView.isHidden = true
            mustageView.isHidden = true
            
            rainbowView.isHidden = true
            clownNoseView.isHidden = true
            clownHairView.isHidden = true
            leftStarView.isHidden = true
            rightStarView.isHidden = true
            
            partyHatView.isHidden = true
            balloonsView.isHidden = true
            
            for view in pointViews {
                view.isHidden = true
            }
        }
    }
}

