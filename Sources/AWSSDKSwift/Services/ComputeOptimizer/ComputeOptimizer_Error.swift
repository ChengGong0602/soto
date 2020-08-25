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

/// Error enum for ComputeOptimizer
public enum ComputeOptimizerErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case internalServerException(message: String?)
    case invalidParameterValueException(message: String?)
    case limitExceededException(message: String?)
    case missingAuthenticationToken(message: String?)
    case optInRequiredException(message: String?)
    case resourceNotFoundException(message: String?)
    case serviceUnavailableException(message: String?)
    case throttlingException(message: String?)
}

extension ComputeOptimizerErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "InternalServerException":
            self = .internalServerException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "MissingAuthenticationToken":
            self = .missingAuthenticationToken(message: message)
        case "OptInRequiredException":
            self = .optInRequiredException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        default:
            return nil
        }
    }
}

extension ComputeOptimizerErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .internalServerException(let message):
            return "InternalServerException: \(message ?? "")"
        case .invalidParameterValueException(let message):
            return "InvalidParameterValueException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .missingAuthenticationToken(let message):
            return "MissingAuthenticationToken: \(message ?? "")"
        case .optInRequiredException(let message):
            return "OptInRequiredException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .serviceUnavailableException(let message):
            return "ServiceUnavailableException: \(message ?? "")"
        case .throttlingException(let message):
            return "ThrottlingException: \(message ?? "")"
        }
    }
}
