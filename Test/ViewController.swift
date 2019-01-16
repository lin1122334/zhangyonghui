//
//  ViewController.swift
//  Test
//
//  Created by aiait on 2018/12/25.
//  Copyright © 2018 aiait.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
   // let table=UITableView(frame: CGRect(x:0, y: 20, width: 374, height: 389))
override func viewDidLoad() {
      let  table=UITableView(frame: self.view.bounds, style: .grouped);
        super.viewDidLoad()
        self.title = "UnserInfo"
        table.delegate=self
        table.dataSource=self
        table.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        self.view.backgroundColor=UIColor.groupTableViewBackground
        self.view.addSubview(table)
        
    }
 
}
extension ViewController:UITableViewDataSource {
  
//设置表格行数
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if(section == 0) {
            return 1
        }else if(section==1){
            return 4
        }else if(section==2){
           return 1
        }
        return 1
    }
    
    //设置分组数即section的个数
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        //设置箭头
        cell?.accessoryType=UITableViewCellAccessoryType.disclosureIndicator
        if(indexPath.section==0){
            if(indexPath.row==0){
                cell?.textLabel?.text="钱包"
                cell?.imageView?.image = #imageLiteral(resourceName: "jiandao")
                }else if(indexPath.row==1){
                cell?.backgroundColor=UIColor.lightGray
            }
        }else if(indexPath.section==1){
            if(indexPath.row==0){
                cell?.textLabel?.text="收藏"
                cell?.imageView?.image = #imageLiteral(resourceName: "bijiben")
                
            }else if(indexPath.row==1){
                cell?.textLabel?.text="相册"
                cell?.imageView?.image = #imageLiteral(resourceName: "dingshuji")
            }else if(indexPath.row==2){
                cell?.textLabel?.text="卡包"
                cell?.imageView?.image = #imageLiteral(resourceName: "gangbi")
            }else if(indexPath.row==3){
                cell?.textLabel?.text="表情"
                cell?.imageView?.image = #imageLiteral(resourceName: "wenjianjia")
            }else if(indexPath.row==4){
                cell?.backgroundColor=UIColor.lightGray
            }
        }else if(indexPath.section==2){
            if(indexPath.row==0){
                cell?.textLabel?.text="设置"
                cell?.imageView?.image = #imageLiteral(resourceName: "jiazi")
            }
            
        }
       //设置箭头
        //cell?.accessoryType = .disclosureIndicator
       
        return cell!
    }
  
}

extension ViewController: UITableViewDelegate {
    //设置cell高度（cell指单元格）
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
     if(indexPath.row==0){
            return 40
            
        }else  if(indexPath.row==1){
            return 40
        }
        return 40
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 40
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
   
}



