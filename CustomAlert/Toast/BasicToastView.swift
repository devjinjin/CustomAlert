//
//  BasicToastView.swift
//  CustomAlert
//
//  Created by jylee-mac on 2021/05/24.
//

import UIKit

class BasicToastView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var ToastLabel: UILabel!
    
    var labelString:String?
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initView()
    }
    
    private func initView(){
        Bundle.main.loadNibNamed("BasicToastView", owner: self, options: nil)
        addSubview(contentView)
//        contentView.frame = self.bounds// CGRect(x: 0, y: 0, width: 200, height: 230)// self.bounds
        
        let y = UIScreen.main.bounds.size.height / 2 - 137 / 2
        let x = UIScreen.main.bounds.size.width / 2 -  280 / 2
        
      
        
        contentView.frame = CGRect(x: x, y: y, width: 280, height: 137)
        
        
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        contentView.layer.cornerRadius = 10;
    }
    
    func setLabelText(text : String) {
        self.ToastLabel.text = text
    }
}
