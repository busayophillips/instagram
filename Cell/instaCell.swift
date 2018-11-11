
import UIKit
import Parse
import ParseUI

class instaCell: UITableViewCell {


    @IBOutlet weak var instaImage: PFImageView!
    @IBOutlet weak var caption: UILabel!
    
    
    var instagramPost: PFObject! {
        didSet {
            self.instaImage.file = instagramPost["media"] as? PFFile
            self.caption.text = instagramPost["caption"] as! String
            self.instaImage.loadInBackground()
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
