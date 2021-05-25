//
//  NavigationAlertView.swift
//  CustomAlert
//
//  Created by jylee-mac on 2021/05/24.
//

import UIKit


enum NaviType : Int {
    case Tmap
    case Kakao
    case Naver
}

class NavigationAlertView: UIViewController {

    
    var callBack: ((_ type: NaviType)-> Void)?
    
    @IBOutlet weak var dialogView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dialogView.layer.cornerRadius = 15
        // Do any additional setup after loading the view.
    }
    @IBAction func naviSelectAction(_ sender: UIButton) {
        let tag = NaviType(rawValue: sender.tag)
        self.callBack?(tag!)
       
    }
    
    @IBAction func onDismiss(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
