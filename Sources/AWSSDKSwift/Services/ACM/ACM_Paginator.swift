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

// MARK: Paginators

extension ACM {

    ///  Retrieves a list of certificate ARNs and domain names. You can request that only certificates that match a specific status be listed. You can also filter by specific attributes of the certificate. Default filtering returns only RSA_2048 certificates. For more information, see Filters.
    public func listCertificatesPaginator(
        _ input: ListCertificatesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListCertificatesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listCertificates, tokenKey: \ListCertificatesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension ACM.ListCertificatesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ACM.ListCertificatesRequest {
        return .init(
            certificateStatuses: self.certificateStatuses,
            includes: self.includes,
            maxItems: self.maxItems,
            nextToken: token
        )

    }
}

