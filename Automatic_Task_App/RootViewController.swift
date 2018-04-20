//
//  RootViewController.swift
//  Automatic_Task_App
//
//  Created by 田嶋智洋 on 2018/04/14.
//  Copyright © 2018年 田嶋智洋. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UIPageViewControllerDataSource {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contentStoryboard = UIStoryboard(name: "ViewController", bundle: nil)
        let contentViewController = contentStoryboard.instantiateInitialViewController() as! ViewController
        
        let pageStoryboard = UIStoryboard(name: "PageViewController", bundle: nil)
        let pageViewController = pageStoryboard.instantiateInitialViewController() as! PageViewController
        
        pageViewController.setViewControllers([contentViewController], direction: .forward, animated: true, completion: nil)
        addChildViewController(pageViewController)
        pageViewController.dataSource = self
        
        view.addSubview(pageViewController.view)
        pageViewController.didMove(toParentViewController: self)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let storyboard = UIStoryboard(name: "ViewController", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController() as! ViewController
        return viewController
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let storyboard = UIStoryboard(name: "ViewController", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController() as! ViewController
        return viewController
    }
}
