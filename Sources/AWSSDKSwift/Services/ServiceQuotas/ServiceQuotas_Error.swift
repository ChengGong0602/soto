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

/// Error enum for ServiceQuotas
public enum ServiceQuotasErrorType: AWSErrorType {
    case aWSServiceAccessNotEnabledException(message: String?)
    case accessDeniedException(message: String?)
    case dependencyAccessDeniedException(message: String?)
    case illegalArgumentException(message: String?)
    case invalidPaginationTokenException(message: String?)
    case invalidResourceStateException(message: String?)
    case noAvailableOrganizationException(message: String?)
    case noSuchResourceException(message: String?)
    case organizationNotInAllFeaturesModeException(message: String?)
    case quotaExceededException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case serviceException(message: String?)
    case serviceQuotaTemplateNotInUseException(message: String?)
    case templatesNotAvailableInRegionException(message: String?)
    case tooManyRequestsException(message: String?)
}

extension ServiceQuotasErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AWSServiceAccessNotEnabledException":
            self = .aWSServiceAccessNotEnabledException(message: message)
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "DependencyAccessDeniedException":
            self = .dependencyAccessDeniedException(message: message)
        case "IllegalArgumentException":
            self = .illegalArgumentException(message: message)
        case "InvalidPaginationTokenException":
            self = .invalidPaginationTokenException(message: message)
        case "InvalidResourceStateException":
            self = .invalidResourceStateException(message: message)
        case "NoAvailableOrganizationException":
            self = .noAvailableOrganizationException(message: message)
        case "NoSuchResourceException":
            self = .noSuchResourceException(message: message)
        case "OrganizationNotInAllFeaturesModeException":
            self = .organizationNotInAllFeaturesModeException(message: message)
        case "QuotaExceededException":
            self = .quotaExceededException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "ServiceException":
            self = .serviceException(message: message)
        case "ServiceQuotaTemplateNotInUseException":
            self = .serviceQuotaTemplateNotInUseException(message: message)
        case "TemplatesNotAvailableInRegionException":
            self = .templatesNotAvailableInRegionException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        default:
            return nil
        }
    }
}

extension ServiceQuotasErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .aWSServiceAccessNotEnabledException(let message):
            return "AWSServiceAccessNotEnabledException: \(message ?? "")"
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .dependencyAccessDeniedException(let message):
            return "DependencyAccessDeniedException: \(message ?? "")"
        case .illegalArgumentException(let message):
            return "IllegalArgumentException: \(message ?? "")"
        case .invalidPaginationTokenException(let message):
            return "InvalidPaginationTokenException: \(message ?? "")"
        case .invalidResourceStateException(let message):
            return "InvalidResourceStateException: \(message ?? "")"
        case .noAvailableOrganizationException(let message):
            return "NoAvailableOrganizationException: \(message ?? "")"
        case .noSuchResourceException(let message):
            return "NoSuchResourceException: \(message ?? "")"
        case .organizationNotInAllFeaturesModeException(let message):
            return "OrganizationNotInAllFeaturesModeException: \(message ?? "")"
        case .quotaExceededException(let message):
            return "QuotaExceededException: \(message ?? "")"
        case .resourceAlreadyExistsException(let message):
            return "ResourceAlreadyExistsException: \(message ?? "")"
        case .serviceException(let message):
            return "ServiceException: \(message ?? "")"
        case .serviceQuotaTemplateNotInUseException(let message):
            return "ServiceQuotaTemplateNotInUseException: \(message ?? "")"
        case .templatesNotAvailableInRegionException(let message):
            return "TemplatesNotAvailableInRegionException: \(message ?? "")"
        case .tooManyRequestsException(let message):
            return "TooManyRequestsException: \(message ?? "")"
        }
    }
}
