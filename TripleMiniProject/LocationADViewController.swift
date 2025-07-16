//
//  LocationADViewController.swift
//  TripleMiniProject
//
//  Created by piri kim on 7/15/25.
//

import UIKit

class LocationADViewController: UIViewController {
    var adInfo:Travel?
    @IBOutlet weak var adLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
//        navigationItem.title = "광고 화면"
        adLabel.text = adInfo?.title
//        navigationItem.leftBarButtonItem?.action = dismiss(animated: true)
       
        // Do any additional setup after loading the view.
    }
    

    @objc func closeButtonTapped() {
        dismiss(animated: true, completion: nil)
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
