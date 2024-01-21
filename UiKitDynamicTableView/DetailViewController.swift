//
//  DetailViewController.swift
//  UiKitDynamicTableView
//
//  Created by Bayu Alif Farisqi on 21/01/24.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var academyImage: UIImageView!
    @IBOutlet weak var academyName: UILabel!
    @IBOutlet weak var academyDesc: UILabel!
    
    var academy : AcademyModel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let result = academy{
            academyImage.image = result.image
            academyName.text = result.name
            academyDesc.text = result.description
        }
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
