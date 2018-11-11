
import UIKit
import Parse
import ParseUI

class postCell: UICollectionViewCell {
    
    
    @IBOutlet weak var collectionImage: PFImageView!
    var instagramPost: PFObject! {
        didSet {
            self.collectionImage.file = instagramPost["media"] as? PFFile
            self.collectionImage.loadInBackground
        }
    }
}
