//
//  GameViewController.swift
//  yamap
//
//  Created by tatsuaki watanabe on 2014/06/15.
//  Copyright (c) 2014年 tatsuaki watanabe. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view!.backgroundColor = UIColor.yellowColor()
        // Do any additional setup after loading the view.
        
        var y:CGFloat = 60.0
        for i in 1...5 {
        let nekoImg:UIImageView = UIImageView();
            y = y + 70
        nekoImg.frame = CGRectMake(140,y,70,60);
        nekoImg.image = UIImage(named:"octo.png")
        self.view!.addSubview(nekoImg)
        }
        
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
