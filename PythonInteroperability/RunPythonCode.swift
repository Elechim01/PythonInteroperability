//
//  RunPythonCode.swift
//  PythonInteroperability
//
//  Created by Michele Manniello on 01/10/22.
//

import Foundation
import PythonKit

func runPythonCode() -> PythonObject {
    let sys = Python.import("sys")
    sys.path.append("/Users/michelemanniello/Documents/Sviluppo/Swift/PythonInteroperability/PythonInteroperability")
    let file = Python.import("PythonFileForInteropability")
    let resposne = file.hello_world()
    print(resposne)
    return resposne
    
}

//PythonFileForInteropability.py
