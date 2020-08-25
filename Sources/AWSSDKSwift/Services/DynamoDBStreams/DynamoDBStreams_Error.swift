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

/// Error enum for DynamoDBStreams
public enum DynamoDBStreamsErrorType: AWSErrorType {
    case expiredIteratorException(message: String?)
    case internalServerError(message: String?)
    case limitExceededException(message: String?)
    case resourceNotFoundException(message: String?)
    case trimmedDataAccessException(message: String?)
}

extension DynamoDBStreamsErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ExpiredIteratorException":
            self = .expiredIteratorException(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "TrimmedDataAccessException":
            self = .trimmedDataAccessException(message: message)
        default:
            return nil
        }
    }
}

extension DynamoDBStreamsErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .expiredIteratorException(let message):
            return "ExpiredIteratorException: \(message ?? "")"
        case .internalServerError(let message):
            return "InternalServerError: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .trimmedDataAccessException(let message):
            return "TrimmedDataAccessException: \(message ?? "")"
        }
    }
}
