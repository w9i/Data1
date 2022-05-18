//
//  RepositoryTask.swift
//  ExampleMVVM
//
//  Created by Oleh Kudinov on 25.10.19.
//

import Foundation
import Common
import Domain
import Networking

class RepositoryTask: Cancellable {
    var networkTask: NetworkCancellable?
    var isCancelled: Bool = false
    
    func cancel() {
        networkTask?.cancel()
        isCancelled = true
    }
}
