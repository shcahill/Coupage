//
//  main.swift
//  Coupage
//
//  Created by Kota4822 on 2019/02/23.
//

import Foundation
import Commander
import CoupageCLI
import Extension

extension Array: ArgumentConvertible where Element: ArgumentConvertible {}

Group {
    $0.command("init", description: "initialize coupage config.") {
        print("💡 initializing...")
        CoupageCLI.initialize()
    }
    
    $0.command("run", description: "please input key:value.") { (args: [String]) in
        print("📚 Release Confluence Page")
        CoupageCLI.run(args)
        print("🍻 Completion!!!")
    }
}.run()
