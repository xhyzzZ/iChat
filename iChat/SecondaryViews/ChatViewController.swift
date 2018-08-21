//
//  ChatViewController.swift
//  iChat
//
//  Created by user on 2018/8/20.
//  Copyright © 2018年 user. All rights reserved.
//

import UIKit
import JSQMessagesViewController
import ProgressHUD
import IQAudioRecorderController
import IDMPhotoBrowser
import AVFoundation
import AVKit
import FirebaseFirestore

class ChatViewController: JSQMessagesViewController {

    
    var outgoingBubble = JSQMessagesBubbleImageFactory()?.outgoingMessagesBubbleImage(with: UIColor.jsq_messageBubbleBlue())
    
    var incomingBubble = JSQMessagesBubbleImageFactory()?.outgoingMessagesBubbleImage(with: UIColor.jsq_messageBubbleLightGray())
    
    override func viewDidLayoutSubviews() {
        perform(Selector("jsq_updateCollectionViewInsets"))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.senderId = FUser.currentId()
        self.senderDisplayName = FUser.currentUser()!.firstname
    }
    
    
    fix for iphonex
    let constraint = perform(Selector(("toolbarBottomLayoutGuide")))?.takeUnretainedValue() as! NSLayoutConstraint
    
    constraint.priority = UILayoutPriority(rawValue: 1000)

    self.inputToolbar.bottomAnchor.constaint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    
    

}
