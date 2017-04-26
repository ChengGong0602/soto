import Foundation
import SwiftyJSON
import Dispatch
import Core


let apis = try loadAPIJSONList()
let docs = try loadDocJSONList()

let group = DispatchGroup()

var errorShapeMap: [String: String] = [:]

let stringShape = Shape(name: "Key", type: ShapeType.string(max: 0, min: 0, pattern: nil))

let member = Member(
    name: "member",
    required: true,
    shape: stringShape,
    location: nil,
    xmlNamespace: nil,
    isStreaming: false
)

let structureShape = StructureShape(members: [member], payload: nil)
let valueShape = Shape(name: "Value", type: ShapeType.structure(structureShape))

let mapShape = Shape(name: "MapShape", type: ShapeType.map(key: stringShape, value: valueShape))

let listShape = Shape(name: "ListShape", type: ShapeType.list(mapShape))

let root = Shape(name: "Root", type: ShapeType.map(key: stringShape, value: listShape))

for index in 0..<apis.count {
    let api = apis[index]
    let doc = docs[index]
    let serviceName = api["metadata"]["endpointPrefix"].stringValue.toSwiftClassCase()
    
    group.enter()
    DispatchQueue.global().async {
        do {
            log("Generating \(serviceName) codes ........")
            
            let service = try AWSService(fromAPIJSON: api, docJSON: doc)
            let basePath = "\(rootPath())/Sources/AWSSDKSwift/Services/\(service.endpointPrefix)/"
            _ = mkdirp(basePath)
            
            try service.generateServiceCode()
                .write(
                    toFile: "\(basePath)/\(service.serviceName)_API.swift",
                    atomically: true,
                    encoding: .utf8
                )
            
            try service.generateShapesCode()
                .write(
                    toFile: "\(basePath)/\(service.serviceName)_Shapes.swift",
                    atomically: true,
                    encoding: .utf8
                )
            
//            try service.generateInitializableFromDictionary()
//                .write(
//                    toFile: "\(basePath)/\(service.serviceName)_ShapesInitializableFromDictionary.swift",
//                    atomically: true,
//                    encoding: .utf8
//                )
            
            if !service.errorShapeNames.isEmpty {
                errorShapeMap[service.endpointPrefix] = service.serviceErrorName
                try service.generateErrorCode()
                    .write(
                        toFile: "\(basePath)/\(service.serviceName)_Error.swift",
                        atomically: true,
                        encoding: .utf8
                )
            }
            
            log("Succesfully Generated \(serviceName) codes!")
            group.leave()
        } catch {
            DispatchQueue.main.sync {
                print(error)
                exit(1)
            }
        }
    }
    //break
}

group.wait()

print("Done.")
