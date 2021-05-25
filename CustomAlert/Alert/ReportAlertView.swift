//
//  CustomAlertViewViewController.swift
//  CustomAlert
//
//  Created by jylee-mac on 2021/05/24.
//

import UIKit

enum ReportType : Int {
    case Station
    case Battery
    case CardReader
    case Etc
}

class ReportAlertView: UIViewController {

    var callBack: ((_ type: ReportType)-> Void)?
    
    @IBOutlet weak var dialogView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dialogView.layer.cornerRadius = 15
        // Do any additional setup after loading the view.
    }
    @IBAction func errorReportAction(_ sender: UIButton) {
        let tag = ReportType(rawValue: sender.tag)
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
