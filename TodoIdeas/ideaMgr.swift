//
//  ideaMgr.swift
//  TodoIdeas
//
//  Created by JING ZHANG on 12/8/15.
//  Copyright © 2015 JING ZHANG. All rights reserved.


//Mark: Global Instance

import Foundation
import UIKit

var ideaMgr: IdeaManager = IdeaManager()

struct idea{
    
    var title = "Un-Title"
    var content =  "Un-Content"
}

class IdeaManager: NSObject {
    
    var ideas = [idea]()
    
    func addIdea(title: String, content: String){
    ideas.append(idea(title:title, content: content))
    }
}