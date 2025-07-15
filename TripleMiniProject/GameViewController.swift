//
//  GameViewController.swift
//  TripleMiniProject
//
//  Created by piri kim on 7/14/25.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var maxNuemTF: UITextField!
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var resultTextView: UITextView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        maxNuemTF.keyboardType = .numberPad
        countLabel.adjustsFontSizeToFitWidth = true
        countLabel.minimumScaleFactor = 0.1
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func bgTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
        if let maxNumStr = maxNuemTF.text, let maxNum = Int(maxNumStr) {
            calculate(maxNum)
        }
    }
   
        
        func calculate(_ maxNum: Int) {
            var resultStr = ""
            var clapCount = 0
            for num in 1...maxNum {
               
                for char in "\(num)" {
                    if char == "3" || char == "6" || char == "9"{
                        clapCount += 1
                        resultStr += "👏"
                    }
                    else{
                        resultStr += "\(char)"
                    }
                }
                resultStr += ", "
            }
            resultStr = String(resultStr.dropLast(2))
            countLabel.text = resultStr
//            clapCountLabel.text = "\(clapCount)"
            resultTextView.text = "숫자 \(maxNum)까지 총 박수는 \(clapCount)입니다."
            
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
