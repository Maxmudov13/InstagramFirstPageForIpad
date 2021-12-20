//
//  Post.swift
//  InstagramFirstPage
//
//  Created by user on 20/12/21.
//

import Foundation

class Post{
    var fullname: String? = ""
    var user_img: String? = ""
    var post_img: String? = ""
    
    init(fullname: String,user_img: String,post_img: String) {
        self.fullname = fullname
        self.user_img = user_img
        self.post_img = post_img
    }
}
