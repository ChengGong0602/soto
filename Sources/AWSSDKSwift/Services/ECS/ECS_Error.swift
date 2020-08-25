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

/// Error enum for ECS
public enum ECSErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case attributeLimitExceededException(message: String?)
    case blockedException(message: String?)
    case clientException(message: String?)
    case clusterContainsContainerInstancesException(message: String?)
    case clusterContainsServicesException(message: String?)
    case clusterContainsTasksException(message: String?)
    case clusterNotFoundException(message: String?)
    case invalidParameterException(message: String?)
    case limitExceededException(message: String?)
    case missingVersionException(message: String?)
    case noUpdateAvailableException(message: String?)
    case platformTaskDefinitionIncompatibilityException(message: String?)
    case platformUnknownException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case serverException(message: String?)
    case serviceNotActiveException(message: String?)
    case serviceNotFoundException(message: String?)
    case targetNotFoundException(message: String?)
    case taskSetNotFoundException(message: String?)
    case unsupportedFeatureException(message: String?)
    case updateInProgressException(message: String?)
}

extension ECSErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "AttributeLimitExceededException":
            self = .attributeLimitExceededException(message: message)
        case "BlockedException":
            self = .blockedException(message: message)
        case "ClientException":
            self = .clientException(message: message)
        case "ClusterContainsContainerInstancesException":
            self = .clusterContainsContainerInstancesException(message: message)
        case "ClusterContainsServicesException":
            self = .clusterContainsServicesException(message: message)
        case "ClusterContainsTasksException":
            self = .clusterContainsTasksException(message: message)
        case "ClusterNotFoundException":
            self = .clusterNotFoundException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "MissingVersionException":
            self = .missingVersionException(message: message)
        case "NoUpdateAvailableException":
            self = .noUpdateAvailableException(message: message)
        case "PlatformTaskDefinitionIncompatibilityException":
            self = .platformTaskDefinitionIncompatibilityException(message: message)
        case "PlatformUnknownException":
            self = .platformUnknownException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServerException":
            self = .serverException(message: message)
        case "ServiceNotActiveException":
            self = .serviceNotActiveException(message: message)
        case "ServiceNotFoundException":
            self = .serviceNotFoundException(message: message)
        case "TargetNotFoundException":
            self = .targetNotFoundException(message: message)
        case "TaskSetNotFoundException":
            self = .taskSetNotFoundException(message: message)
        case "UnsupportedFeatureException":
            self = .unsupportedFeatureException(message: message)
        case "UpdateInProgressException":
            self = .updateInProgressException(message: message)
        default:
            return nil
        }
    }
}

extension ECSErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .attributeLimitExceededException(let message):
            return "AttributeLimitExceededException: \(message ?? "")"
        case .blockedException(let message):
            return "BlockedException: \(message ?? "")"
        case .clientException(let message):
            return "ClientException: \(message ?? "")"
        case .clusterContainsContainerInstancesException(let message):
            return "ClusterContainsContainerInstancesException: \(message ?? "")"
        case .clusterContainsServicesException(let message):
            return "ClusterContainsServicesException: \(message ?? "")"
        case .clusterContainsTasksException(let message):
            return "ClusterContainsTasksException: \(message ?? "")"
        case .clusterNotFoundException(let message):
            return "ClusterNotFoundException: \(message ?? "")"
        case .invalidParameterException(let message):
            return "InvalidParameterException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .missingVersionException(let message):
            return "MissingVersionException: \(message ?? "")"
        case .noUpdateAvailableException(let message):
            return "NoUpdateAvailableException: \(message ?? "")"
        case .platformTaskDefinitionIncompatibilityException(let message):
            return "PlatformTaskDefinitionIncompatibilityException: \(message ?? "")"
        case .platformUnknownException(let message):
            return "PlatformUnknownException: \(message ?? "")"
        case .resourceInUseException(let message):
            return "ResourceInUseException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .serverException(let message):
            return "ServerException: \(message ?? "")"
        case .serviceNotActiveException(let message):
            return "ServiceNotActiveException: \(message ?? "")"
        case .serviceNotFoundException(let message):
            return "ServiceNotFoundException: \(message ?? "")"
        case .targetNotFoundException(let message):
            return "TargetNotFoundException: \(message ?? "")"
        case .taskSetNotFoundException(let message):
            return "TaskSetNotFoundException: \(message ?? "")"
        case .unsupportedFeatureException(let message):
            return "UnsupportedFeatureException: \(message ?? "")"
        case .updateInProgressException(let message):
            return "UpdateInProgressException: \(message ?? "")"
        }
    }
}
