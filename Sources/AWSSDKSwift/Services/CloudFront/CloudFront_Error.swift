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

/// Error enum for CloudFront
public enum CloudFrontErrorType: AWSErrorType {
    case accessDenied(message: String?)
    case batchTooLarge(message: String?)
    case cNAMEAlreadyExists(message: String?)
    case cachePolicyAlreadyExists(message: String?)
    case cachePolicyInUse(message: String?)
    case cannotChangeImmutablePublicKeyFields(message: String?)
    case cloudFrontOriginAccessIdentityAlreadyExists(message: String?)
    case cloudFrontOriginAccessIdentityInUse(message: String?)
    case distributionAlreadyExists(message: String?)
    case distributionNotDisabled(message: String?)
    case fieldLevelEncryptionConfigAlreadyExists(message: String?)
    case fieldLevelEncryptionConfigInUse(message: String?)
    case fieldLevelEncryptionProfileAlreadyExists(message: String?)
    case fieldLevelEncryptionProfileInUse(message: String?)
    case fieldLevelEncryptionProfileSizeExceeded(message: String?)
    case illegalDelete(message: String?)
    case illegalFieldLevelEncryptionConfigAssociationWithCacheBehavior(message: String?)
    case illegalUpdate(message: String?)
    case inconsistentQuantities(message: String?)
    case invalidArgument(message: String?)
    case invalidDefaultRootObject(message: String?)
    case invalidErrorCode(message: String?)
    case invalidForwardCookies(message: String?)
    case invalidGeoRestrictionParameter(message: String?)
    case invalidHeadersForS3Origin(message: String?)
    case invalidIfMatchVersion(message: String?)
    case invalidLambdaFunctionAssociation(message: String?)
    case invalidLocationCode(message: String?)
    case invalidMinimumProtocolVersion(message: String?)
    case invalidOrigin(message: String?)
    case invalidOriginAccessIdentity(message: String?)
    case invalidOriginKeepaliveTimeout(message: String?)
    case invalidOriginReadTimeout(message: String?)
    case invalidProtocolSettings(message: String?)
    case invalidQueryStringParameters(message: String?)
    case invalidRelativePath(message: String?)
    case invalidRequiredProtocol(message: String?)
    case invalidResponseCode(message: String?)
    case invalidTTLOrder(message: String?)
    case invalidTagging(message: String?)
    case invalidViewerCertificate(message: String?)
    case invalidWebACLId(message: String?)
    case missingBody(message: String?)
    case noSuchCachePolicy(message: String?)
    case noSuchCloudFrontOriginAccessIdentity(message: String?)
    case noSuchDistribution(message: String?)
    case noSuchFieldLevelEncryptionConfig(message: String?)
    case noSuchFieldLevelEncryptionProfile(message: String?)
    case noSuchInvalidation(message: String?)
    case noSuchOrigin(message: String?)
    case noSuchOriginRequestPolicy(message: String?)
    case noSuchPublicKey(message: String?)
    case noSuchResource(message: String?)
    case noSuchStreamingDistribution(message: String?)
    case originRequestPolicyAlreadyExists(message: String?)
    case originRequestPolicyInUse(message: String?)
    case preconditionFailed(message: String?)
    case publicKeyAlreadyExists(message: String?)
    case publicKeyInUse(message: String?)
    case queryArgProfileEmpty(message: String?)
    case streamingDistributionAlreadyExists(message: String?)
    case streamingDistributionNotDisabled(message: String?)
    case tooManyCacheBehaviors(message: String?)
    case tooManyCachePolicies(message: String?)
    case tooManyCertificates(message: String?)
    case tooManyCloudFrontOriginAccessIdentities(message: String?)
    case tooManyCookieNamesInWhiteList(message: String?)
    case tooManyCookiesInCachePolicy(message: String?)
    case tooManyCookiesInOriginRequestPolicy(message: String?)
    case tooManyDistributionCNAMEs(message: String?)
    case tooManyDistributions(message: String?)
    case tooManyDistributionsAssociatedToCachePolicy(message: String?)
    case tooManyDistributionsAssociatedToFieldLevelEncryptionConfig(message: String?)
    case tooManyDistributionsAssociatedToOriginRequestPolicy(message: String?)
    case tooManyDistributionsWithLambdaAssociations(message: String?)
    case tooManyDistributionsWithSingleFunctionARN(message: String?)
    case tooManyFieldLevelEncryptionConfigs(message: String?)
    case tooManyFieldLevelEncryptionContentTypeProfiles(message: String?)
    case tooManyFieldLevelEncryptionEncryptionEntities(message: String?)
    case tooManyFieldLevelEncryptionFieldPatterns(message: String?)
    case tooManyFieldLevelEncryptionProfiles(message: String?)
    case tooManyFieldLevelEncryptionQueryArgProfiles(message: String?)
    case tooManyHeadersInCachePolicy(message: String?)
    case tooManyHeadersInForwardedValues(message: String?)
    case tooManyHeadersInOriginRequestPolicy(message: String?)
    case tooManyInvalidationsInProgress(message: String?)
    case tooManyLambdaFunctionAssociations(message: String?)
    case tooManyOriginCustomHeaders(message: String?)
    case tooManyOriginGroupsPerDistribution(message: String?)
    case tooManyOriginRequestPolicies(message: String?)
    case tooManyOrigins(message: String?)
    case tooManyPublicKeys(message: String?)
    case tooManyQueryStringParameters(message: String?)
    case tooManyQueryStringsInCachePolicy(message: String?)
    case tooManyQueryStringsInOriginRequestPolicy(message: String?)
    case tooManyStreamingDistributionCNAMEs(message: String?)
    case tooManyStreamingDistributions(message: String?)
    case tooManyTrustedSigners(message: String?)
    case trustedSignerDoesNotExist(message: String?)
}

extension CloudFrontErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDenied":
            self = .accessDenied(message: message)
        case "BatchTooLarge":
            self = .batchTooLarge(message: message)
        case "CNAMEAlreadyExists":
            self = .cNAMEAlreadyExists(message: message)
        case "CachePolicyAlreadyExists":
            self = .cachePolicyAlreadyExists(message: message)
        case "CachePolicyInUse":
            self = .cachePolicyInUse(message: message)
        case "CannotChangeImmutablePublicKeyFields":
            self = .cannotChangeImmutablePublicKeyFields(message: message)
        case "CloudFrontOriginAccessIdentityAlreadyExists":
            self = .cloudFrontOriginAccessIdentityAlreadyExists(message: message)
        case "CloudFrontOriginAccessIdentityInUse":
            self = .cloudFrontOriginAccessIdentityInUse(message: message)
        case "DistributionAlreadyExists":
            self = .distributionAlreadyExists(message: message)
        case "DistributionNotDisabled":
            self = .distributionNotDisabled(message: message)
        case "FieldLevelEncryptionConfigAlreadyExists":
            self = .fieldLevelEncryptionConfigAlreadyExists(message: message)
        case "FieldLevelEncryptionConfigInUse":
            self = .fieldLevelEncryptionConfigInUse(message: message)
        case "FieldLevelEncryptionProfileAlreadyExists":
            self = .fieldLevelEncryptionProfileAlreadyExists(message: message)
        case "FieldLevelEncryptionProfileInUse":
            self = .fieldLevelEncryptionProfileInUse(message: message)
        case "FieldLevelEncryptionProfileSizeExceeded":
            self = .fieldLevelEncryptionProfileSizeExceeded(message: message)
        case "IllegalDelete":
            self = .illegalDelete(message: message)
        case "IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior":
            self = .illegalFieldLevelEncryptionConfigAssociationWithCacheBehavior(message: message)
        case "IllegalUpdate":
            self = .illegalUpdate(message: message)
        case "InconsistentQuantities":
            self = .inconsistentQuantities(message: message)
        case "InvalidArgument":
            self = .invalidArgument(message: message)
        case "InvalidDefaultRootObject":
            self = .invalidDefaultRootObject(message: message)
        case "InvalidErrorCode":
            self = .invalidErrorCode(message: message)
        case "InvalidForwardCookies":
            self = .invalidForwardCookies(message: message)
        case "InvalidGeoRestrictionParameter":
            self = .invalidGeoRestrictionParameter(message: message)
        case "InvalidHeadersForS3Origin":
            self = .invalidHeadersForS3Origin(message: message)
        case "InvalidIfMatchVersion":
            self = .invalidIfMatchVersion(message: message)
        case "InvalidLambdaFunctionAssociation":
            self = .invalidLambdaFunctionAssociation(message: message)
        case "InvalidLocationCode":
            self = .invalidLocationCode(message: message)
        case "InvalidMinimumProtocolVersion":
            self = .invalidMinimumProtocolVersion(message: message)
        case "InvalidOrigin":
            self = .invalidOrigin(message: message)
        case "InvalidOriginAccessIdentity":
            self = .invalidOriginAccessIdentity(message: message)
        case "InvalidOriginKeepaliveTimeout":
            self = .invalidOriginKeepaliveTimeout(message: message)
        case "InvalidOriginReadTimeout":
            self = .invalidOriginReadTimeout(message: message)
        case "InvalidProtocolSettings":
            self = .invalidProtocolSettings(message: message)
        case "InvalidQueryStringParameters":
            self = .invalidQueryStringParameters(message: message)
        case "InvalidRelativePath":
            self = .invalidRelativePath(message: message)
        case "InvalidRequiredProtocol":
            self = .invalidRequiredProtocol(message: message)
        case "InvalidResponseCode":
            self = .invalidResponseCode(message: message)
        case "InvalidTTLOrder":
            self = .invalidTTLOrder(message: message)
        case "InvalidTagging":
            self = .invalidTagging(message: message)
        case "InvalidViewerCertificate":
            self = .invalidViewerCertificate(message: message)
        case "InvalidWebACLId":
            self = .invalidWebACLId(message: message)
        case "MissingBody":
            self = .missingBody(message: message)
        case "NoSuchCachePolicy":
            self = .noSuchCachePolicy(message: message)
        case "NoSuchCloudFrontOriginAccessIdentity":
            self = .noSuchCloudFrontOriginAccessIdentity(message: message)
        case "NoSuchDistribution":
            self = .noSuchDistribution(message: message)
        case "NoSuchFieldLevelEncryptionConfig":
            self = .noSuchFieldLevelEncryptionConfig(message: message)
        case "NoSuchFieldLevelEncryptionProfile":
            self = .noSuchFieldLevelEncryptionProfile(message: message)
        case "NoSuchInvalidation":
            self = .noSuchInvalidation(message: message)
        case "NoSuchOrigin":
            self = .noSuchOrigin(message: message)
        case "NoSuchOriginRequestPolicy":
            self = .noSuchOriginRequestPolicy(message: message)
        case "NoSuchPublicKey":
            self = .noSuchPublicKey(message: message)
        case "NoSuchResource":
            self = .noSuchResource(message: message)
        case "NoSuchStreamingDistribution":
            self = .noSuchStreamingDistribution(message: message)
        case "OriginRequestPolicyAlreadyExists":
            self = .originRequestPolicyAlreadyExists(message: message)
        case "OriginRequestPolicyInUse":
            self = .originRequestPolicyInUse(message: message)
        case "PreconditionFailed":
            self = .preconditionFailed(message: message)
        case "PublicKeyAlreadyExists":
            self = .publicKeyAlreadyExists(message: message)
        case "PublicKeyInUse":
            self = .publicKeyInUse(message: message)
        case "QueryArgProfileEmpty":
            self = .queryArgProfileEmpty(message: message)
        case "StreamingDistributionAlreadyExists":
            self = .streamingDistributionAlreadyExists(message: message)
        case "StreamingDistributionNotDisabled":
            self = .streamingDistributionNotDisabled(message: message)
        case "TooManyCacheBehaviors":
            self = .tooManyCacheBehaviors(message: message)
        case "TooManyCachePolicies":
            self = .tooManyCachePolicies(message: message)
        case "TooManyCertificates":
            self = .tooManyCertificates(message: message)
        case "TooManyCloudFrontOriginAccessIdentities":
            self = .tooManyCloudFrontOriginAccessIdentities(message: message)
        case "TooManyCookieNamesInWhiteList":
            self = .tooManyCookieNamesInWhiteList(message: message)
        case "TooManyCookiesInCachePolicy":
            self = .tooManyCookiesInCachePolicy(message: message)
        case "TooManyCookiesInOriginRequestPolicy":
            self = .tooManyCookiesInOriginRequestPolicy(message: message)
        case "TooManyDistributionCNAMEs":
            self = .tooManyDistributionCNAMEs(message: message)
        case "TooManyDistributions":
            self = .tooManyDistributions(message: message)
        case "TooManyDistributionsAssociatedToCachePolicy":
            self = .tooManyDistributionsAssociatedToCachePolicy(message: message)
        case "TooManyDistributionsAssociatedToFieldLevelEncryptionConfig":
            self = .tooManyDistributionsAssociatedToFieldLevelEncryptionConfig(message: message)
        case "TooManyDistributionsAssociatedToOriginRequestPolicy":
            self = .tooManyDistributionsAssociatedToOriginRequestPolicy(message: message)
        case "TooManyDistributionsWithLambdaAssociations":
            self = .tooManyDistributionsWithLambdaAssociations(message: message)
        case "TooManyDistributionsWithSingleFunctionARN":
            self = .tooManyDistributionsWithSingleFunctionARN(message: message)
        case "TooManyFieldLevelEncryptionConfigs":
            self = .tooManyFieldLevelEncryptionConfigs(message: message)
        case "TooManyFieldLevelEncryptionContentTypeProfiles":
            self = .tooManyFieldLevelEncryptionContentTypeProfiles(message: message)
        case "TooManyFieldLevelEncryptionEncryptionEntities":
            self = .tooManyFieldLevelEncryptionEncryptionEntities(message: message)
        case "TooManyFieldLevelEncryptionFieldPatterns":
            self = .tooManyFieldLevelEncryptionFieldPatterns(message: message)
        case "TooManyFieldLevelEncryptionProfiles":
            self = .tooManyFieldLevelEncryptionProfiles(message: message)
        case "TooManyFieldLevelEncryptionQueryArgProfiles":
            self = .tooManyFieldLevelEncryptionQueryArgProfiles(message: message)
        case "TooManyHeadersInCachePolicy":
            self = .tooManyHeadersInCachePolicy(message: message)
        case "TooManyHeadersInForwardedValues":
            self = .tooManyHeadersInForwardedValues(message: message)
        case "TooManyHeadersInOriginRequestPolicy":
            self = .tooManyHeadersInOriginRequestPolicy(message: message)
        case "TooManyInvalidationsInProgress":
            self = .tooManyInvalidationsInProgress(message: message)
        case "TooManyLambdaFunctionAssociations":
            self = .tooManyLambdaFunctionAssociations(message: message)
        case "TooManyOriginCustomHeaders":
            self = .tooManyOriginCustomHeaders(message: message)
        case "TooManyOriginGroupsPerDistribution":
            self = .tooManyOriginGroupsPerDistribution(message: message)
        case "TooManyOriginRequestPolicies":
            self = .tooManyOriginRequestPolicies(message: message)
        case "TooManyOrigins":
            self = .tooManyOrigins(message: message)
        case "TooManyPublicKeys":
            self = .tooManyPublicKeys(message: message)
        case "TooManyQueryStringParameters":
            self = .tooManyQueryStringParameters(message: message)
        case "TooManyQueryStringsInCachePolicy":
            self = .tooManyQueryStringsInCachePolicy(message: message)
        case "TooManyQueryStringsInOriginRequestPolicy":
            self = .tooManyQueryStringsInOriginRequestPolicy(message: message)
        case "TooManyStreamingDistributionCNAMEs":
            self = .tooManyStreamingDistributionCNAMEs(message: message)
        case "TooManyStreamingDistributions":
            self = .tooManyStreamingDistributions(message: message)
        case "TooManyTrustedSigners":
            self = .tooManyTrustedSigners(message: message)
        case "TrustedSignerDoesNotExist":
            self = .trustedSignerDoesNotExist(message: message)
        default:
            return nil
        }
    }
}

extension CloudFrontErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .accessDenied(let message):
            return "AccessDenied: \(message ?? "")"
        case .batchTooLarge(let message):
            return "BatchTooLarge: \(message ?? "")"
        case .cNAMEAlreadyExists(let message):
            return "CNAMEAlreadyExists: \(message ?? "")"
        case .cachePolicyAlreadyExists(let message):
            return "CachePolicyAlreadyExists: \(message ?? "")"
        case .cachePolicyInUse(let message):
            return "CachePolicyInUse: \(message ?? "")"
        case .cannotChangeImmutablePublicKeyFields(let message):
            return "CannotChangeImmutablePublicKeyFields: \(message ?? "")"
        case .cloudFrontOriginAccessIdentityAlreadyExists(let message):
            return "CloudFrontOriginAccessIdentityAlreadyExists: \(message ?? "")"
        case .cloudFrontOriginAccessIdentityInUse(let message):
            return "CloudFrontOriginAccessIdentityInUse: \(message ?? "")"
        case .distributionAlreadyExists(let message):
            return "DistributionAlreadyExists: \(message ?? "")"
        case .distributionNotDisabled(let message):
            return "DistributionNotDisabled: \(message ?? "")"
        case .fieldLevelEncryptionConfigAlreadyExists(let message):
            return "FieldLevelEncryptionConfigAlreadyExists: \(message ?? "")"
        case .fieldLevelEncryptionConfigInUse(let message):
            return "FieldLevelEncryptionConfigInUse: \(message ?? "")"
        case .fieldLevelEncryptionProfileAlreadyExists(let message):
            return "FieldLevelEncryptionProfileAlreadyExists: \(message ?? "")"
        case .fieldLevelEncryptionProfileInUse(let message):
            return "FieldLevelEncryptionProfileInUse: \(message ?? "")"
        case .fieldLevelEncryptionProfileSizeExceeded(let message):
            return "FieldLevelEncryptionProfileSizeExceeded: \(message ?? "")"
        case .illegalDelete(let message):
            return "IllegalDelete: \(message ?? "")"
        case .illegalFieldLevelEncryptionConfigAssociationWithCacheBehavior(let message):
            return "IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior: \(message ?? "")"
        case .illegalUpdate(let message):
            return "IllegalUpdate: \(message ?? "")"
        case .inconsistentQuantities(let message):
            return "InconsistentQuantities: \(message ?? "")"
        case .invalidArgument(let message):
            return "InvalidArgument: \(message ?? "")"
        case .invalidDefaultRootObject(let message):
            return "InvalidDefaultRootObject: \(message ?? "")"
        case .invalidErrorCode(let message):
            return "InvalidErrorCode: \(message ?? "")"
        case .invalidForwardCookies(let message):
            return "InvalidForwardCookies: \(message ?? "")"
        case .invalidGeoRestrictionParameter(let message):
            return "InvalidGeoRestrictionParameter: \(message ?? "")"
        case .invalidHeadersForS3Origin(let message):
            return "InvalidHeadersForS3Origin: \(message ?? "")"
        case .invalidIfMatchVersion(let message):
            return "InvalidIfMatchVersion: \(message ?? "")"
        case .invalidLambdaFunctionAssociation(let message):
            return "InvalidLambdaFunctionAssociation: \(message ?? "")"
        case .invalidLocationCode(let message):
            return "InvalidLocationCode: \(message ?? "")"
        case .invalidMinimumProtocolVersion(let message):
            return "InvalidMinimumProtocolVersion: \(message ?? "")"
        case .invalidOrigin(let message):
            return "InvalidOrigin: \(message ?? "")"
        case .invalidOriginAccessIdentity(let message):
            return "InvalidOriginAccessIdentity: \(message ?? "")"
        case .invalidOriginKeepaliveTimeout(let message):
            return "InvalidOriginKeepaliveTimeout: \(message ?? "")"
        case .invalidOriginReadTimeout(let message):
            return "InvalidOriginReadTimeout: \(message ?? "")"
        case .invalidProtocolSettings(let message):
            return "InvalidProtocolSettings: \(message ?? "")"
        case .invalidQueryStringParameters(let message):
            return "InvalidQueryStringParameters: \(message ?? "")"
        case .invalidRelativePath(let message):
            return "InvalidRelativePath: \(message ?? "")"
        case .invalidRequiredProtocol(let message):
            return "InvalidRequiredProtocol: \(message ?? "")"
        case .invalidResponseCode(let message):
            return "InvalidResponseCode: \(message ?? "")"
        case .invalidTTLOrder(let message):
            return "InvalidTTLOrder: \(message ?? "")"
        case .invalidTagging(let message):
            return "InvalidTagging: \(message ?? "")"
        case .invalidViewerCertificate(let message):
            return "InvalidViewerCertificate: \(message ?? "")"
        case .invalidWebACLId(let message):
            return "InvalidWebACLId: \(message ?? "")"
        case .missingBody(let message):
            return "MissingBody: \(message ?? "")"
        case .noSuchCachePolicy(let message):
            return "NoSuchCachePolicy: \(message ?? "")"
        case .noSuchCloudFrontOriginAccessIdentity(let message):
            return "NoSuchCloudFrontOriginAccessIdentity: \(message ?? "")"
        case .noSuchDistribution(let message):
            return "NoSuchDistribution: \(message ?? "")"
        case .noSuchFieldLevelEncryptionConfig(let message):
            return "NoSuchFieldLevelEncryptionConfig: \(message ?? "")"
        case .noSuchFieldLevelEncryptionProfile(let message):
            return "NoSuchFieldLevelEncryptionProfile: \(message ?? "")"
        case .noSuchInvalidation(let message):
            return "NoSuchInvalidation: \(message ?? "")"
        case .noSuchOrigin(let message):
            return "NoSuchOrigin: \(message ?? "")"
        case .noSuchOriginRequestPolicy(let message):
            return "NoSuchOriginRequestPolicy: \(message ?? "")"
        case .noSuchPublicKey(let message):
            return "NoSuchPublicKey: \(message ?? "")"
        case .noSuchResource(let message):
            return "NoSuchResource: \(message ?? "")"
        case .noSuchStreamingDistribution(let message):
            return "NoSuchStreamingDistribution: \(message ?? "")"
        case .originRequestPolicyAlreadyExists(let message):
            return "OriginRequestPolicyAlreadyExists: \(message ?? "")"
        case .originRequestPolicyInUse(let message):
            return "OriginRequestPolicyInUse: \(message ?? "")"
        case .preconditionFailed(let message):
            return "PreconditionFailed: \(message ?? "")"
        case .publicKeyAlreadyExists(let message):
            return "PublicKeyAlreadyExists: \(message ?? "")"
        case .publicKeyInUse(let message):
            return "PublicKeyInUse: \(message ?? "")"
        case .queryArgProfileEmpty(let message):
            return "QueryArgProfileEmpty: \(message ?? "")"
        case .streamingDistributionAlreadyExists(let message):
            return "StreamingDistributionAlreadyExists: \(message ?? "")"
        case .streamingDistributionNotDisabled(let message):
            return "StreamingDistributionNotDisabled: \(message ?? "")"
        case .tooManyCacheBehaviors(let message):
            return "TooManyCacheBehaviors: \(message ?? "")"
        case .tooManyCachePolicies(let message):
            return "TooManyCachePolicies: \(message ?? "")"
        case .tooManyCertificates(let message):
            return "TooManyCertificates: \(message ?? "")"
        case .tooManyCloudFrontOriginAccessIdentities(let message):
            return "TooManyCloudFrontOriginAccessIdentities: \(message ?? "")"
        case .tooManyCookieNamesInWhiteList(let message):
            return "TooManyCookieNamesInWhiteList: \(message ?? "")"
        case .tooManyCookiesInCachePolicy(let message):
            return "TooManyCookiesInCachePolicy: \(message ?? "")"
        case .tooManyCookiesInOriginRequestPolicy(let message):
            return "TooManyCookiesInOriginRequestPolicy: \(message ?? "")"
        case .tooManyDistributionCNAMEs(let message):
            return "TooManyDistributionCNAMEs: \(message ?? "")"
        case .tooManyDistributions(let message):
            return "TooManyDistributions: \(message ?? "")"
        case .tooManyDistributionsAssociatedToCachePolicy(let message):
            return "TooManyDistributionsAssociatedToCachePolicy: \(message ?? "")"
        case .tooManyDistributionsAssociatedToFieldLevelEncryptionConfig(let message):
            return "TooManyDistributionsAssociatedToFieldLevelEncryptionConfig: \(message ?? "")"
        case .tooManyDistributionsAssociatedToOriginRequestPolicy(let message):
            return "TooManyDistributionsAssociatedToOriginRequestPolicy: \(message ?? "")"
        case .tooManyDistributionsWithLambdaAssociations(let message):
            return "TooManyDistributionsWithLambdaAssociations: \(message ?? "")"
        case .tooManyDistributionsWithSingleFunctionARN(let message):
            return "TooManyDistributionsWithSingleFunctionARN: \(message ?? "")"
        case .tooManyFieldLevelEncryptionConfigs(let message):
            return "TooManyFieldLevelEncryptionConfigs: \(message ?? "")"
        case .tooManyFieldLevelEncryptionContentTypeProfiles(let message):
            return "TooManyFieldLevelEncryptionContentTypeProfiles: \(message ?? "")"
        case .tooManyFieldLevelEncryptionEncryptionEntities(let message):
            return "TooManyFieldLevelEncryptionEncryptionEntities: \(message ?? "")"
        case .tooManyFieldLevelEncryptionFieldPatterns(let message):
            return "TooManyFieldLevelEncryptionFieldPatterns: \(message ?? "")"
        case .tooManyFieldLevelEncryptionProfiles(let message):
            return "TooManyFieldLevelEncryptionProfiles: \(message ?? "")"
        case .tooManyFieldLevelEncryptionQueryArgProfiles(let message):
            return "TooManyFieldLevelEncryptionQueryArgProfiles: \(message ?? "")"
        case .tooManyHeadersInCachePolicy(let message):
            return "TooManyHeadersInCachePolicy: \(message ?? "")"
        case .tooManyHeadersInForwardedValues(let message):
            return "TooManyHeadersInForwardedValues: \(message ?? "")"
        case .tooManyHeadersInOriginRequestPolicy(let message):
            return "TooManyHeadersInOriginRequestPolicy: \(message ?? "")"
        case .tooManyInvalidationsInProgress(let message):
            return "TooManyInvalidationsInProgress: \(message ?? "")"
        case .tooManyLambdaFunctionAssociations(let message):
            return "TooManyLambdaFunctionAssociations: \(message ?? "")"
        case .tooManyOriginCustomHeaders(let message):
            return "TooManyOriginCustomHeaders: \(message ?? "")"
        case .tooManyOriginGroupsPerDistribution(let message):
            return "TooManyOriginGroupsPerDistribution: \(message ?? "")"
        case .tooManyOriginRequestPolicies(let message):
            return "TooManyOriginRequestPolicies: \(message ?? "")"
        case .tooManyOrigins(let message):
            return "TooManyOrigins: \(message ?? "")"
        case .tooManyPublicKeys(let message):
            return "TooManyPublicKeys: \(message ?? "")"
        case .tooManyQueryStringParameters(let message):
            return "TooManyQueryStringParameters: \(message ?? "")"
        case .tooManyQueryStringsInCachePolicy(let message):
            return "TooManyQueryStringsInCachePolicy: \(message ?? "")"
        case .tooManyQueryStringsInOriginRequestPolicy(let message):
            return "TooManyQueryStringsInOriginRequestPolicy: \(message ?? "")"
        case .tooManyStreamingDistributionCNAMEs(let message):
            return "TooManyStreamingDistributionCNAMEs: \(message ?? "")"
        case .tooManyStreamingDistributions(let message):
            return "TooManyStreamingDistributions: \(message ?? "")"
        case .tooManyTrustedSigners(let message):
            return "TooManyTrustedSigners: \(message ?? "")"
        case .trustedSignerDoesNotExist(let message):
            return "TrustedSignerDoesNotExist: \(message ?? "")"
        }
    }
}
