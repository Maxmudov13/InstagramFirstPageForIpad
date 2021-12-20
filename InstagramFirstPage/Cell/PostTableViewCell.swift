import UIKit

class PostTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    @IBOutlet weak var ProfileImage: UIImageView!
    
    @IBOutlet weak var Fullname: UILabel!
    
    @IBOutlet weak var PostImage: UIImageView!
}
