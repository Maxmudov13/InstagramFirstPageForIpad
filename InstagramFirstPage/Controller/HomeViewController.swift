import UIKit

class HomeViewController: BaseController, UITableViewDelegate, UITableViewDataSource  {

    override func viewDidLoad() {
        super.viewDidLoad()

        initView()
        
    }

    @IBOutlet weak var TableView: UITableView!
    
    var items : Array<Post> = Array()
    
    // MARK: - Methods
    
    func initView() {
        setNavigationBar()
        
        TableView.dataSource = self
        TableView.delegate = self
        
        items.append(Post(fullname: "Sherzod", user_img: "person1", post_img: "image1"))
        items.append(Post(fullname: "Suxrob", user_img: "person2", post_img: "image2"))
        items.append(Post(fullname: "Ezozbek", user_img: "person1", post_img: "image3"))
        items.append(Post(fullname: "Islom", user_img: "person2", post_img: "image4"))
        items.append(Post(fullname: "Sanjar", user_img: "person1", post_img: "image5"))
        items.append(Post(fullname: "Muxriddin", user_img: "person2", post_img: "image6"))
    }
    func setNavigationBar(){
        let camera = UIImage(systemName: "camera.fill")
        let send = UIImage(systemName: "paperplane.fill")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(leftTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(rightTapped))
        title = "Instagram"
            
    }
    
    

    // MARK: - Actions
    
    @objc func leftTapped(){
            
    }
        
    @objc func rightTapped(){
            
    }
    
    
    // MARK: - Table View

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        
        cell.Fullname.text = item.fullname
        cell.ProfileImage.image = UIImage(named: item.user_img!)
        cell.PostImage.image = UIImage(named: item.post_img!)
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
}
