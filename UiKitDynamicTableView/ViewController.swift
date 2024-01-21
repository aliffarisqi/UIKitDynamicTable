//
//  ViewController.swift
//  UiKitDynamicTableView
//
//  Created by Bayu Alif Farisqi on 21/01/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var academyTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        academyTableView.dataSource = self
        academyTableView.delegate = self
        
        academyTableView.register(
            UINib(nibName: "academyTableViewCell", bundle: nil),
            forCellReuseIdentifier: "AcademyCell"
            
        )
    }
    
    
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyAcademyData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(
            withIdentifier: "AcademyCell",
            for: indexPath
        ) as? academyTableViewCell{
            let academy = dummyAcademyData[indexPath.row]
            cell.academyLabel.text = academy.name
            cell.academyDescription.text = academy.description
            cell.academyImageView.image = academy.image
            
            return cell
        } else{
            return UITableViewCell()
        }
    }
}
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        performSegue(
            withIdentifier: "moveToDetail",
            sender: dummyAcademyData[indexPath.row]
        )
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToDetail"{
            if let detailViewController = segue.destination as? DetailViewController{
                detailViewController.academy = sender as? AcademyModel
            }
        }
    }
}
