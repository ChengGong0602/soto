//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for QLDB
public enum QLDBErrorType: AWSErrorType {
    case invalidParameterException(message: String?)
    case limitExceededException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case resourcePreconditionNotMetException(message: String?)
}

extension QLDBErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ResourcePreconditionNotMetException":
            self = .resourcePreconditionNotMetException(message: message)
        default:
            return nil
        }
    }
}

extension QLDBErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .invalidParameterException(let message):
            return "InvalidParameterException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .resourceAlreadyExistsException(let message):
            return "ResourceAlreadyExistsException: \(message ?? "")"
        case .resourceInUseException(let message):
            return "ResourceInUseException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .resourcePreconditionNotMetException(let message):
            return "ResourcePreconditionNotMetException: \(message ?? "")"
        }
    }
}
