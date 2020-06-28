//
//  SearchRouter.swift
//  iOSArchitecturesDemo
//
//  Created by Evgeny Kolesnik on 28.06.2020.
//  Copyright © 2020 Evgeny Kolesnik. All rights reserved.
//

import UIKit

protocol SearchRouterInput {
    func openDetailsFor(_ item: Any)
}

class SearchRouter: SearchRouterInput {
    
    weak var viewController: UIViewController?
    
    func openDetailsFor(_ item: Any) {
        if let item = item as? ITunesApp {
            let appDetailViewController = AppDetailViewController(app: item)
            self.viewController?.navigationController?.pushViewController(appDetailViewController, animated: true)
        } else if let item = item as? ITunesSong {
            let songDetailViewController = SongDetailViewController(song: item)
            self.viewController?.navigationController?.pushViewController(songDetailViewController, animated: true)
        }
    }
}
