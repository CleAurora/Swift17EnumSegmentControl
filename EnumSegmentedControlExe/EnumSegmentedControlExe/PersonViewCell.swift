//
//  PersonViewCell.swift
//  EnumSegmentedControlExe
//
//  Created by Cleís Aurora Pereira on 07/10/20.
//

import UIKit

class PersonViewCell: UITableViewCell {

    @IBOutlet var personImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!

    func setup(person: Person) {
        if let developer = person as? Developer {
            personImage.image = UIImage(named: person.image)
            nameLabel.text = person.name

        } else {
            personImage.image = UIImage(named: person.image)
            nameLabel.text = person.name
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
