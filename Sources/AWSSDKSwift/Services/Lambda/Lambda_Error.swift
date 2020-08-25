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

/// Error enum for Lambda
public enum LambdaErrorType: AWSErrorType {
    case codeStorageExceededException(message: String?)
    case eC2AccessDeniedException(message: String?)
    case eC2ThrottledException(message: String?)
    case eC2UnexpectedException(message: String?)
    case eFSIOException(message: String?)
    case eFSMountConnectivityException(message: String?)
    case eFSMountFailureException(message: String?)
    case eFSMountTimeoutException(message: String?)
    case eNILimitReachedException(message: String?)
    case invalidParameterValueException(message: String?)
    case invalidRequestContentException(message: String?)
    case invalidRuntimeException(message: String?)
    case invalidSecurityGroupIDException(message: String?)
    case invalidSubnetIDException(message: String?)
    case invalidZipFileException(message: String?)
    case kMSAccessDeniedException(message: String?)
    case kMSDisabledException(message: String?)
    case kMSInvalidStateException(message: String?)
    case kMSNotFoundException(message: String?)
    case policyLengthExceededException(message: String?)
    case preconditionFailedException(message: String?)
    case provisionedConcurrencyConfigNotFoundException(message: String?)
    case requestTooLargeException(message: String?)
    case resourceConflictException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case resourceNotReadyException(message: String?)
    case serviceException(message: String?)
    case subnetIPAddressLimitReachedException(message: String?)
    case tooManyRequestsException(message: String?)
    case unsupportedMediaTypeException(message: String?)
}

extension LambdaErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "CodeStorageExceededException":
            self = .codeStorageExceededException(message: message)
        case "EC2AccessDeniedException":
            self = .eC2AccessDeniedException(message: message)
        case "EC2ThrottledException":
            self = .eC2ThrottledException(message: message)
        case "EC2UnexpectedException":
            self = .eC2UnexpectedException(message: message)
        case "EFSIOException":
            self = .eFSIOException(message: message)
        case "EFSMountConnectivityException":
            self = .eFSMountConnectivityException(message: message)
        case "EFSMountFailureException":
            self = .eFSMountFailureException(message: message)
        case "EFSMountTimeoutException":
            self = .eFSMountTimeoutException(message: message)
        case "ENILimitReachedException":
            self = .eNILimitReachedException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "InvalidRequestContentException":
            self = .invalidRequestContentException(message: message)
        case "InvalidRuntimeException":
            self = .invalidRuntimeException(message: message)
        case "InvalidSecurityGroupIDException":
            self = .invalidSecurityGroupIDException(message: message)
        case "InvalidSubnetIDException":
            self = .invalidSubnetIDException(message: message)
        case "InvalidZipFileException":
            self = .invalidZipFileException(message: message)
        case "KMSAccessDeniedException":
            self = .kMSAccessDeniedException(message: message)
        case "KMSDisabledException":
            self = .kMSDisabledException(message: message)
        case "KMSInvalidStateException":
            self = .kMSInvalidStateException(message: message)
        case "KMSNotFoundException":
            self = .kMSNotFoundException(message: message)
        case "PolicyLengthExceededException":
            self = .policyLengthExceededException(message: message)
        case "PreconditionFailedException":
            self = .preconditionFailedException(message: message)
        case "ProvisionedConcurrencyConfigNotFoundException":
            self = .provisionedConcurrencyConfigNotFoundException(message: message)
        case "RequestTooLargeException":
            self = .requestTooLargeException(message: message)
        case "ResourceConflictException":
            self = .resourceConflictException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ResourceNotReadyException":
            self = .resourceNotReadyException(message: message)
        case "ServiceException":
            self = .serviceException(message: message)
        case "SubnetIPAddressLimitReachedException":
            self = .subnetIPAddressLimitReachedException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "UnsupportedMediaTypeException":
            self = .unsupportedMediaTypeException(message: message)
        default:
            return nil
        }
    }
}

extension LambdaErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .codeStorageExceededException(let message):
            return "CodeStorageExceededException: \(message ?? "")"
        case .eC2AccessDeniedException(let message):
            return "EC2AccessDeniedException: \(message ?? "")"
        case .eC2ThrottledException(let message):
            return "EC2ThrottledException: \(message ?? "")"
        case .eC2UnexpectedException(let message):
            return "EC2UnexpectedException: \(message ?? "")"
        case .eFSIOException(let message):
            return "EFSIOException: \(message ?? "")"
        case .eFSMountConnectivityException(let message):
            return "EFSMountConnectivityException: \(message ?? "")"
        case .eFSMountFailureException(let message):
            return "EFSMountFailureException: \(message ?? "")"
        case .eFSMountTimeoutException(let message):
            return "EFSMountTimeoutException: \(message ?? "")"
        case .eNILimitReachedException(let message):
            return "ENILimitReachedException: \(message ?? "")"
        case .invalidParameterValueException(let message):
            return "InvalidParameterValueException: \(message ?? "")"
        case .invalidRequestContentException(let message):
            return "InvalidRequestContentException: \(message ?? "")"
        case .invalidRuntimeException(let message):
            return "InvalidRuntimeException: \(message ?? "")"
        case .invalidSecurityGroupIDException(let message):
            return "InvalidSecurityGroupIDException: \(message ?? "")"
        case .invalidSubnetIDException(let message):
            return "InvalidSubnetIDException: \(message ?? "")"
        case .invalidZipFileException(let message):
            return "InvalidZipFileException: \(message ?? "")"
        case .kMSAccessDeniedException(let message):
            return "KMSAccessDeniedException: \(message ?? "")"
        case .kMSDisabledException(let message):
            return "KMSDisabledException: \(message ?? "")"
        case .kMSInvalidStateException(let message):
            return "KMSInvalidStateException: \(message ?? "")"
        case .kMSNotFoundException(let message):
            return "KMSNotFoundException: \(message ?? "")"
        case .policyLengthExceededException(let message):
            return "PolicyLengthExceededException: \(message ?? "")"
        case .preconditionFailedException(let message):
            return "PreconditionFailedException: \(message ?? "")"
        case .provisionedConcurrencyConfigNotFoundException(let message):
            return "ProvisionedConcurrencyConfigNotFoundException: \(message ?? "")"
        case .requestTooLargeException(let message):
            return "RequestTooLargeException: \(message ?? "")"
        case .resourceConflictException(let message):
            return "ResourceConflictException: \(message ?? "")"
        case .resourceInUseException(let message):
            return "ResourceInUseException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .resourceNotReadyException(let message):
            return "ResourceNotReadyException: \(message ?? "")"
        case .serviceException(let message):
            return "ServiceException: \(message ?? "")"
        case .subnetIPAddressLimitReachedException(let message):
            return "SubnetIPAddressLimitReachedException: \(message ?? "")"
        case .tooManyRequestsException(let message):
            return "TooManyRequestsException: \(message ?? "")"
        case .unsupportedMediaTypeException(let message):
            return "UnsupportedMediaTypeException: \(message ?? "")"
        }
    }
}
