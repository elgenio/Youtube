//
//  Video.swift
//  Youtube
//
//  Created by Marwan on 14/01/2017.
//  Copyright © 2017 Proxym. All rights reserved.
//

import UIKit

class Video: NSObject{
    var thumbnailImageName: String?
    var title: String?
    var numberOfViews: NSNumber?
    var uploadDate: NSDate?
    var channel: Channel?
    
}


class Channel: NSObject {
    var name : String?
    var profileImageName: String?
}
