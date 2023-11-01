//
//  realListViewController.swift
//  Lol Page
//
//  Created by Tony Lieu on 11/1/23.
//

import UIKit

class realListViewController: UIViewController, UITableViewDelegate {
    var numberArray = ["1","2","3"]
    
    @IBOutlet weak var tables: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tables.dataSource = self
        tables.delegate = self
        // Do any additional setup after loading the view.
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
extension realListViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cells", for: indexPath)
        let number = numberArray[indexPath.row]
        cell.textLabel?.text = number
        return cell
    }
}
