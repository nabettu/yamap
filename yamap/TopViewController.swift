//
//  TopViewController.swift
//  yamap
//
//  Created by tatsuaki watanabe on 2014/06/15.
//  Copyright (c) 2014年 tatsuaki watanabe. All rights reserved.
//

import UIKit

class TopViewController: UIViewController {

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view!.backgroundColor = UIColor.redColor()
        
        let startBtn:UIImageView = UIImageView()
        startBtn.frame = CGRectMake(100,320,120,50)
        startBtn.backgroundColor = UIColor.greenColor()
        startBtn.userInteractionEnabled = true
        let tapBtnGesture = UITapGestureRecognizer(target:self,action:"tapAction")
        startBtn.addGestureRecognizer(tapBtnGesture)
        self.view.addSubview(startBtn)
        
        // Do any additional setup after loading the view.
    }
    
    func tapAction(){
        self.view!.backgroundColor = UIColor.blueColor()

        let gameViewCtr:GameViewController = GameViewController(nibName:nil,bundle:nil)
        self.navigationController!.pushViewController(gameViewCtr,animated:true)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
