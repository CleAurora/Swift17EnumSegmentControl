//
//  ViewController.swift
//  EnumSegmentedControlExe
//
//  Created by Cleís Aurora Pereira on 07/10/20.
//

import UIKit

enum TypePerson{
    static let person = 0
    static let developer = 1
}

class ViewController: UIViewController {

    var arrayPerson = [Person]()

    @IBOutlet weak var segmentedControlTypePerson: UISegmentedControl!

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }


    @IBAction func segmentedControlTypePersonAction(_ sender: Any) {
        arrayPerson = [Person]()
        if segmentedControlTypePerson.selectedSegmentIndex == TypePerson.person {
            for i in 1...10 {
                arrayPerson.append(Person(name: "Person\(i)", image: "person1"))
            }
        } else {
            for i in 1...10 {
                arrayPerson.append(Developer(name: "Developer\(i)", image: "person1"))
            }
        }
        tableView.reloadData()
    }
}



extension ViewController: UITableViewDelegate{

}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPerson.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PersonViewCell
        cell.setup(person: arrayPerson[indexPath.row])

        return cell
    }


}

