//
//  PostCell.swift
//  Instagram
//
//  Created by Vicky Tang on 3/10/17.
//  Copyright © 2017 Vicky Tang. All rights reserved.
//

import UIKit
import Parse

class PostCell: UITableViewCell {

    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    
    var postData: PFObject? {
        didSet {
            //print("Post object has now been set!")
            self.captionLabel.text = postData?.value(forKey: "caption") as? String
            
            if let postImage = postData?.value(forKey: "media") as? PFFile {
                postImage.getDataInBackground(block: { (image: Data?, error: Error?) in
                    if error == nil {
                        self.postImageView.image = UIImage.init(data: image!)
                    } else {
                        print(error?.localizedDescription as Any)
                    }
                })
            }
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
