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

/// Error enum for ELB
public enum ELBErrorType: AWSErrorType {
    case accessPointNotFoundException(message: String?)
    case certificateNotFoundException(message: String?)
    case dependencyThrottleException(message: String?)
    case duplicateAccessPointNameException(message: String?)
    case duplicateListenerException(message: String?)
    case duplicatePolicyNameException(message: String?)
    case duplicateTagKeysException(message: String?)
    case invalidConfigurationRequestException(message: String?)
    case invalidEndPointException(message: String?)
    case invalidSchemeException(message: String?)
    case invalidSecurityGroupException(message: String?)
    case invalidSubnetException(message: String?)
    case listenerNotFoundException(message: String?)
    case loadBalancerAttributeNotFoundException(message: String?)
    case operationNotPermittedException(message: String?)
    case policyNotFoundException(message: String?)
    case policyTypeNotFoundException(message: String?)
    case subnetNotFoundException(message: String?)
    case tooManyAccessPointsException(message: String?)
    case tooManyPoliciesException(message: String?)
    case tooManyTagsException(message: String?)
    case unsupportedProtocolException(message: String?)
}

extension ELBErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "LoadBalancerNotFound":
            self = .accessPointNotFoundException(message: message)
        case "CertificateNotFound":
            self = .certificateNotFoundException(message: message)
        case "DependencyThrottle":
            self = .dependencyThrottleException(message: message)
        case "DuplicateLoadBalancerName":
            self = .duplicateAccessPointNameException(message: message)
        case "DuplicateListener":
            self = .duplicateListenerException(message: message)
        case "DuplicatePolicyName":
            self = .duplicatePolicyNameException(message: message)
        case "DuplicateTagKeys":
            self = .duplicateTagKeysException(message: message)
        case "InvalidConfigurationRequest":
            self = .invalidConfigurationRequestException(message: message)
        case "InvalidInstance":
            self = .invalidEndPointException(message: message)
        case "InvalidScheme":
            self = .invalidSchemeException(message: message)
        case "InvalidSecurityGroup":
            self = .invalidSecurityGroupException(message: message)
        case "InvalidSubnet":
            self = .invalidSubnetException(message: message)
        case "ListenerNotFound":
            self = .listenerNotFoundException(message: message)
        case "LoadBalancerAttributeNotFound":
            self = .loadBalancerAttributeNotFoundException(message: message)
        case "OperationNotPermitted":
            self = .operationNotPermittedException(message: message)
        case "PolicyNotFound":
            self = .policyNotFoundException(message: message)
        case "PolicyTypeNotFound":
            self = .policyTypeNotFoundException(message: message)
        case "SubnetNotFound":
            self = .subnetNotFoundException(message: message)
        case "TooManyLoadBalancers":
            self = .tooManyAccessPointsException(message: message)
        case "TooManyPolicies":
            self = .tooManyPoliciesException(message: message)
        case "TooManyTags":
            self = .tooManyTagsException(message: message)
        case "UnsupportedProtocol":
            self = .unsupportedProtocolException(message: message)
        default:
            return nil
        }
    }
}

extension ELBErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .accessPointNotFoundException(let message):
            return "LoadBalancerNotFound: \(message ?? "")"
        case .certificateNotFoundException(let message):
            return "CertificateNotFound: \(message ?? "")"
        case .dependencyThrottleException(let message):
            return "DependencyThrottle: \(message ?? "")"
        case .duplicateAccessPointNameException(let message):
            return "DuplicateLoadBalancerName: \(message ?? "")"
        case .duplicateListenerException(let message):
            return "DuplicateListener: \(message ?? "")"
        case .duplicatePolicyNameException(let message):
            return "DuplicatePolicyName: \(message ?? "")"
        case .duplicateTagKeysException(let message):
            return "DuplicateTagKeys: \(message ?? "")"
        case .invalidConfigurationRequestException(let message):
            return "InvalidConfigurationRequest: \(message ?? "")"
        case .invalidEndPointException(let message):
            return "InvalidInstance: \(message ?? "")"
        case .invalidSchemeException(let message):
            return "InvalidScheme: \(message ?? "")"
        case .invalidSecurityGroupException(let message):
            return "InvalidSecurityGroup: \(message ?? "")"
        case .invalidSubnetException(let message):
            return "InvalidSubnet: \(message ?? "")"
        case .listenerNotFoundException(let message):
            return "ListenerNotFound: \(message ?? "")"
        case .loadBalancerAttributeNotFoundException(let message):
            return "LoadBalancerAttributeNotFound: \(message ?? "")"
        case .operationNotPermittedException(let message):
            return "OperationNotPermitted: \(message ?? "")"
        case .policyNotFoundException(let message):
            return "PolicyNotFound: \(message ?? "")"
        case .policyTypeNotFoundException(let message):
            return "PolicyTypeNotFound: \(message ?? "")"
        case .subnetNotFoundException(let message):
            return "SubnetNotFound: \(message ?? "")"
        case .tooManyAccessPointsException(let message):
            return "TooManyLoadBalancers: \(message ?? "")"
        case .tooManyPoliciesException(let message):
            return "TooManyPolicies: \(message ?? "")"
        case .tooManyTagsException(let message):
            return "TooManyTags: \(message ?? "")"
        case .unsupportedProtocolException(let message):
            return "UnsupportedProtocol: \(message ?? "")"
        }
    }
}
