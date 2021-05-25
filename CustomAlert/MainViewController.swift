//
//  ViewController.swift
//  CustomAlert
//
//  Created by jylee-mac on 2021/05/24.
//

import UIKit
import KakaoSDKNavi
//import TMapSDK
class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
               if let myAlert = storyboard.instantiateViewController(withIdentifier: "ReportAlertView")as? ReportAlertView {
                   myAlert.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
                   myAlert.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
                   myAlert.callBack = { (type : ReportType) in
                        let font = UIFont.systemFont(ofSize: UIFont.smallSystemFontSize)

                    self.showToastMessage(message: "\(type.rawValue)번이 터치 되었습니다.", font:  font)
                   
                   }
                   self.present(myAlert, animated: true, completion: nil)
               }
    }
    
    @IBAction func showToast(_ sender: Any) {
        showDefaultToast(message: "성공적으로 접수되었습니다")
              
    }
    @IBAction func CopyAction(_ sender: Any) {
        showDefaultToast(message: "복사되었습니다")
    }
    
    @IBAction func naviSelectAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let myAlert = storyboard.instantiateViewController(withIdentifier: "NavigationAlertView")as? NavigationAlertView {
           myAlert.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
           myAlert.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
           myAlert.callBack = { (type : NaviType) in
                switch type {
                case .Kakao:
                    self.onKakaoNavi()
                case .Naver:
                    self.onNaverNavi()
                case .Tmap:
                    self.onTmapNavi()
                }
                myAlert.dismiss(animated: false, completion: nil)
           }
           self.present(myAlert, animated: true, completion: nil)
        }
    }
}

extension UIViewController {
    func showToastMessage(message : String, font: UIFont) {

        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 75, y: self.view.frame.size.height-100, width: 150, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.font = font
        toastLabel.textAlignment = .center;
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
    
    func showDefaultToast(message : String) {
        let toastView = BasicToastView()
        toastView.setLabelText(text: message)
        self.view.addSubview(toastView)

        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseIn, animations: {
            toastView.alpha = 1
        }, completion: nil)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double((Int64)(2 * NSEC_PER_SEC)) / Double(NSEC_PER_SEC), execute: {
           UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseIn, animations: {
               toastView.alpha = 0
           }, completion: { finished in
               toastView.removeFromSuperview()
           })
       })
    }
    
    func onKakaoNavi() {
//        let destination = NaviLocation(name: "카카오판교오피스", x: "321286", y: "533707")
//        let viaList = [NaviLocation(name: "판교역 1번출구", x: "321525", y: "532951")]
//        guard let navigateUrl = NaviApi.shared.navigateUrl(destination: destination, viaList: viaList) else {
//            return
//        }
//        UIApplication.shared.open(navigateUrl, options: [:], completionHandler: nil)
    }
    
    func onNaverNavi() {
//        let destination = NaviLocation(name: "카카오판교오피스", x: "321286", y: "533707")
//        let viaList = [NaviLocation(name: "판교역 1번출구", x: "321525", y: "532951")]
//        guard let navigateUrl = NaviApi.shared.navigateUrl(destination: destination, viaList: viaList) else {
//            return
//        }
//        UIApplication.shared.open(navigateUrl, options: [:], completionHandler: nil)
    }
    
    func onTmapNavi() {
        
//        var coords = CLLocationCoordinate2D()
//            coords.latitude = 37.1
//            coords.longitude = 18.1
//
//            TMapTapi.setSKTMapAuthenticationWith(self, apiKey: "l7xx93fa8f0c1ad24cc181928dfc6e1898b2")
//
//            print("Tmap installed? : \(TMapTapi.isTmapApplicationInstalled())")
//
//            if TMapTapi.isTmapApplicationInstalled() {
//                print("installed")
//
//
//
//                TMapTapi.invokeRoute("목적지명!!@", coordinate: coords)
//
//
//
//            } else {
//                print("need to install : \(TMapTapi.getTMapDownUrl())")
//
//                // 미개통된 단말인 경우 nil 반환
//                if let urlList = TMapTapi.getTMapDownUrl() {
//                    print("get Tmap download url")
//
//                    if UIApplication.shared.canOpenURL(URL(string: urlList)!) {
//                        UIApplication.shared.open(URL(string: String(urlList))!, options: [:], completionHandler: { response in
//                            print("colpletion Test Tmap open url")
//                        })
//                    } else {
//                        print("cannot Open URL")
//                    }
//
//                }
//
//
//            }
    }
}

