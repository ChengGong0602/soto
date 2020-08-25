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
import Foundation

extension Translate {
    // MARK: Enums

    public enum EncryptionKeyType: String, CustomStringConvertible, Codable {
        case kms = "KMS"
        public var description: String { return self.rawValue }
    }

    public enum JobStatus: String, CustomStringConvertible, Codable {
        case submitted = "SUBMITTED"
        case inProgress = "IN_PROGRESS"
        case completed = "COMPLETED"
        case completedWithError = "COMPLETED_WITH_ERROR"
        case failed = "FAILED"
        case stopRequested = "STOP_REQUESTED"
        case stopped = "STOPPED"
        public var description: String { return self.rawValue }
    }

    public enum MergeStrategy: String, CustomStringConvertible, Codable {
        case overwrite = "OVERWRITE"
        public var description: String { return self.rawValue }
    }

    public enum TerminologyDataFormat: String, CustomStringConvertible, Codable {
        case csv = "CSV"
        case tmx = "TMX"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct AppliedTerminology: AWSDecodableShape {

        /// The name of the custom terminology applied to the input text by Amazon Translate for the translated text response.
        public let name: String?
        /// The specific terms of the custom terminology applied to the input text by Amazon Translate for the translated text response. A maximum of 250 terms will be returned, and the specific terms applied will be the first 250 terms in the source text. 
        public let terms: [Term]?

        public init(name: String? = nil, terms: [Term]? = nil) {
            self.name = name
            self.terms = terms
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case terms = "Terms"
        }
    }

    public struct DeleteTerminologyRequest: AWSEncodableShape {

        /// The name of the custom terminology being deleted. 
        public let name: String

        public init(name: String) {
            self.name = name
        }

        public func validate(name: String) throws {
            try validate(self.name, name: "name", parent: name, max: 256)
            try validate(self.name, name: "name", parent: name, min: 1)
            try validate(self.name, name: "name", parent: name, pattern: "^([A-Za-z0-9-]_?)+$")
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }

    public struct DescribeTextTranslationJobRequest: AWSEncodableShape {

        /// The identifier that Amazon Translate generated for the job. The StartTextTranslationJob operation returns this identifier in its response.
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        public func validate(name: String) throws {
            try validate(self.jobId, name: "jobId", parent: name, max: 32)
            try validate(self.jobId, name: "jobId", parent: name, min: 1)
            try validate(self.jobId, name: "jobId", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$")
        }

        private enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    public struct DescribeTextTranslationJobResponse: AWSDecodableShape {

        /// An object that contains the properties associated with an asynchronous batch translation job.
        public let textTranslationJobProperties: TextTranslationJobProperties?

        public init(textTranslationJobProperties: TextTranslationJobProperties? = nil) {
            self.textTranslationJobProperties = textTranslationJobProperties
        }

        private enum CodingKeys: String, CodingKey {
            case textTranslationJobProperties = "TextTranslationJobProperties"
        }
    }

    public struct EncryptionKey: AWSEncodableShape & AWSDecodableShape {

        /// The Amazon Resource Name (ARN) of the encryption key being used to encrypt the custom terminology.
        public let id: String
        /// The type of encryption key used by Amazon Translate to encrypt custom terminologies.
        public let `type`: EncryptionKeyType

        public init(id: String, type: EncryptionKeyType) {
            self.id = id
            self.`type` = `type`
        }

        public func validate(name: String) throws {
            try validate(self.id, name: "id", parent: name, max: 400)
            try validate(self.id, name: "id", parent: name, min: 1)
            try validate(self.id, name: "id", parent: name, pattern: "(arn:aws((-us-gov)|(-iso)|(-iso-b)|(-cn))?:kms:)?([a-z]{2}-[a-z]+(-[a-z]+)?-\\d:)?(\\d{12}:)?(((key/)?[a-zA-Z0-9-_]+)|(alias/[a-zA-Z0-9:/_-]+))")
        }

        private enum CodingKeys: String, CodingKey {
            case id = "Id"
            case `type` = "Type"
        }
    }

    public struct GetTerminologyRequest: AWSEncodableShape {

        /// The name of the custom terminology being retrieved.
        public let name: String
        /// The data format of the custom terminology being retrieved, either CSV or TMX.
        public let terminologyDataFormat: TerminologyDataFormat

        public init(name: String, terminologyDataFormat: TerminologyDataFormat) {
            self.name = name
            self.terminologyDataFormat = terminologyDataFormat
        }

        public func validate(name: String) throws {
            try validate(self.name, name: "name", parent: name, max: 256)
            try validate(self.name, name: "name", parent: name, min: 1)
            try validate(self.name, name: "name", parent: name, pattern: "^([A-Za-z0-9-]_?)+$")
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case terminologyDataFormat = "TerminologyDataFormat"
        }
    }

    public struct GetTerminologyResponse: AWSDecodableShape {

        /// The data location of the custom terminology being retrieved. The custom terminology file is returned in a presigned url that has a 30 minute expiration.
        public let terminologyDataLocation: TerminologyDataLocation?
        /// The properties of the custom terminology being retrieved.
        public let terminologyProperties: TerminologyProperties?

        public init(terminologyDataLocation: TerminologyDataLocation? = nil, terminologyProperties: TerminologyProperties? = nil) {
            self.terminologyDataLocation = terminologyDataLocation
            self.terminologyProperties = terminologyProperties
        }

        private enum CodingKeys: String, CodingKey {
            case terminologyDataLocation = "TerminologyDataLocation"
            case terminologyProperties = "TerminologyProperties"
        }
    }

    public struct ImportTerminologyRequest: AWSEncodableShape {

        /// The description of the custom terminology being imported.
        public let description: String?
        /// The encryption key for the custom terminology being imported.
        public let encryptionKey: EncryptionKey?
        /// The merge strategy of the custom terminology being imported. Currently, only the OVERWRITE merge strategy is supported. In this case, the imported terminology will overwrite an existing terminology of the same name.
        public let mergeStrategy: MergeStrategy
        /// The name of the custom terminology being imported.
        public let name: String
        /// The terminology data for the custom terminology being imported.
        public let terminologyData: TerminologyData

        public init(description: String? = nil, encryptionKey: EncryptionKey? = nil, mergeStrategy: MergeStrategy, name: String, terminologyData: TerminologyData) {
            self.description = description
            self.encryptionKey = encryptionKey
            self.mergeStrategy = mergeStrategy
            self.name = name
            self.terminologyData = terminologyData
        }

        public func validate(name: String) throws {
            try validate(self.description, name: "description", parent: name, max: 256)
            try validate(self.description, name: "description", parent: name, pattern: "[\\P{M}\\p{M}]{0,256}")
            try self.encryptionKey?.validate(name: "\(name).encryptionKey")
            try validate(self.name, name: "name", parent: name, max: 256)
            try validate(self.name, name: "name", parent: name, min: 1)
            try validate(self.name, name: "name", parent: name, pattern: "^([A-Za-z0-9-]_?)+$")
            try self.terminologyData.validate(name: "\(name).terminologyData")
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case encryptionKey = "EncryptionKey"
            case mergeStrategy = "MergeStrategy"
            case name = "Name"
            case terminologyData = "TerminologyData"
        }
    }

    public struct ImportTerminologyResponse: AWSDecodableShape {

        /// The properties of the custom terminology being imported.
        public let terminologyProperties: TerminologyProperties?

        public init(terminologyProperties: TerminologyProperties? = nil) {
            self.terminologyProperties = terminologyProperties
        }

        private enum CodingKeys: String, CodingKey {
            case terminologyProperties = "TerminologyProperties"
        }
    }

    public struct InputDataConfig: AWSEncodableShape & AWSDecodableShape {

        /// The multipurpose internet mail extension (MIME) type of the input files. Valid values are text/plain for plaintext files and text/html for HTML files.
        public let contentType: String
        /// The URI of the AWS S3 folder that contains the input file. The folder must be in the same Region as the API endpoint you are calling.
        public let s3Uri: String

        public init(contentType: String, s3Uri: String) {
            self.contentType = contentType
            self.s3Uri = s3Uri
        }

        public func validate(name: String) throws {
            try validate(self.contentType, name: "contentType", parent: name, max: 256)
            try validate(self.contentType, name: "contentType", parent: name, pattern: "^[-\\w.]+\\/[-\\w.+]+$")
            try validate(self.s3Uri, name: "s3Uri", parent: name, max: 1024)
            try validate(self.s3Uri, name: "s3Uri", parent: name, pattern: "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?")
        }

        private enum CodingKeys: String, CodingKey {
            case contentType = "ContentType"
            case s3Uri = "S3Uri"
        }
    }

    public struct JobDetails: AWSDecodableShape {

        /// The number of documents that could not be processed during a translation job.
        public let documentsWithErrorsCount: Int?
        /// The number of documents used as input in a translation job.
        public let inputDocumentsCount: Int?
        /// The number of documents successfully processed during a translation job.
        public let translatedDocumentsCount: Int?

        public init(documentsWithErrorsCount: Int? = nil, inputDocumentsCount: Int? = nil, translatedDocumentsCount: Int? = nil) {
            self.documentsWithErrorsCount = documentsWithErrorsCount
            self.inputDocumentsCount = inputDocumentsCount
            self.translatedDocumentsCount = translatedDocumentsCount
        }

        private enum CodingKeys: String, CodingKey {
            case documentsWithErrorsCount = "DocumentsWithErrorsCount"
            case inputDocumentsCount = "InputDocumentsCount"
            case translatedDocumentsCount = "TranslatedDocumentsCount"
        }
    }

    public struct ListTerminologiesRequest: AWSEncodableShape {

        /// The maximum number of custom terminologies returned per list request.
        public let maxResults: Int?
        /// If the result of the request to ListTerminologies was truncated, include the NextToken to fetch the next group of custom terminologies. 
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name: "maxResults", parent: name, max: 500)
            try validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try validate(self.nextToken, name: "nextToken", parent: name, max: 8192)
            try validate(self.nextToken, name: "nextToken", parent: name, pattern: "\\p{ASCII}{0,8192}")
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListTerminologiesResponse: AWSDecodableShape {

        ///  If the response to the ListTerminologies was truncated, the NextToken fetches the next group of custom terminologies.
        public let nextToken: String?
        /// The properties list of the custom terminologies returned on the list request.
        public let terminologyPropertiesList: [TerminologyProperties]?

        public init(nextToken: String? = nil, terminologyPropertiesList: [TerminologyProperties]? = nil) {
            self.nextToken = nextToken
            self.terminologyPropertiesList = terminologyPropertiesList
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case terminologyPropertiesList = "TerminologyPropertiesList"
        }
    }

    public struct ListTextTranslationJobsRequest: AWSEncodableShape {

        /// The parameters that specify which batch translation jobs to retrieve. Filters include job name, job status, and submission time. You can only set one filter at a time.
        public let filter: TextTranslationJobFilter?
        /// The maximum number of results to return in each page. The default value is 100.
        public let maxResults: Int?
        /// The token to request the next page of results.
        public let nextToken: String?

        public init(filter: TextTranslationJobFilter? = nil, maxResults: Int? = nil, nextToken: String? = nil) {
            self.filter = filter
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.filter?.validate(name: "\(name).filter")
            try validate(self.maxResults, name: "maxResults", parent: name, max: 500)
            try validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try validate(self.nextToken, name: "nextToken", parent: name, max: 8192)
            try validate(self.nextToken, name: "nextToken", parent: name, pattern: "\\p{ASCII}{0,8192}")
        }

        private enum CodingKeys: String, CodingKey {
            case filter = "Filter"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListTextTranslationJobsResponse: AWSDecodableShape {

        /// The token to use to retreive the next page of results. This value is null when there are no more results to return.
        public let nextToken: String?
        /// A list containing the properties of each job that is returned.
        public let textTranslationJobPropertiesList: [TextTranslationJobProperties]?

        public init(nextToken: String? = nil, textTranslationJobPropertiesList: [TextTranslationJobProperties]? = nil) {
            self.nextToken = nextToken
            self.textTranslationJobPropertiesList = textTranslationJobPropertiesList
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case textTranslationJobPropertiesList = "TextTranslationJobPropertiesList"
        }
    }

    public struct OutputDataConfig: AWSEncodableShape & AWSDecodableShape {

        /// The URI of the S3 folder that contains a translation job's output file. The folder must be in the same Region as the API endpoint that you are calling.
        public let s3Uri: String

        public init(s3Uri: String) {
            self.s3Uri = s3Uri
        }

        public func validate(name: String) throws {
            try validate(self.s3Uri, name: "s3Uri", parent: name, max: 1024)
            try validate(self.s3Uri, name: "s3Uri", parent: name, pattern: "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?")
        }

        private enum CodingKeys: String, CodingKey {
            case s3Uri = "S3Uri"
        }
    }

    public struct StartTextTranslationJobRequest: AWSEncodableShape {

        /// The client token of the EC2 instance calling the request. This token is auto-generated when using the Amazon Translate SDK. Otherwise, use the DescribeInstances EC2 operation to retreive an instance's client token. For more information, see Client Tokens in the EC2 User Guide.
        public let clientToken: String
        /// The Amazon Resource Name (ARN) of an AWS Identity Access and Management (IAM) role that grants Amazon Translate read access to your input data. For more nformation, see identity-and-access-management.
        public let dataAccessRoleArn: String
        /// Specifies the format and S3 location of the input documents for the translation job.
        public let inputDataConfig: InputDataConfig
        /// The name of the batch translation job to be performed.
        public let jobName: String?
        /// Specifies the S3 folder to which your job output will be saved. 
        public let outputDataConfig: OutputDataConfig
        /// The language code of the input language. For a list of language codes, see what-is-languages. Amazon Translate does not automatically detect a source language during batch translation jobs.
        public let sourceLanguageCode: String
        /// The language code of the output language.
        public let targetLanguageCodes: [String]
        /// The name of the terminology to use in the batch translation job. For a list of available terminologies, use the ListTerminologies operation.
        public let terminologyNames: [String]?

        public init(clientToken: String = StartTextTranslationJobRequest.idempotencyToken(), dataAccessRoleArn: String, inputDataConfig: InputDataConfig, jobName: String? = nil, outputDataConfig: OutputDataConfig, sourceLanguageCode: String, targetLanguageCodes: [String], terminologyNames: [String]? = nil) {
            self.clientToken = clientToken
            self.dataAccessRoleArn = dataAccessRoleArn
            self.inputDataConfig = inputDataConfig
            self.jobName = jobName
            self.outputDataConfig = outputDataConfig
            self.sourceLanguageCode = sourceLanguageCode
            self.targetLanguageCodes = targetLanguageCodes
            self.terminologyNames = terminologyNames
        }

        public func validate(name: String) throws {
            try validate(self.clientToken, name: "clientToken", parent: name, max: 64)
            try validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try validate(self.clientToken, name: "clientToken", parent: name, pattern: "^[a-zA-Z0-9-]+$")
            try validate(self.dataAccessRoleArn, name: "dataAccessRoleArn", parent: name, max: 2048)
            try validate(self.dataAccessRoleArn, name: "dataAccessRoleArn", parent: name, min: 20)
            try validate(self.dataAccessRoleArn, name: "dataAccessRoleArn", parent: name, pattern: "arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+")
            try self.inputDataConfig.validate(name: "\(name).inputDataConfig")
            try validate(self.jobName, name: "jobName", parent: name, max: 256)
            try validate(self.jobName, name: "jobName", parent: name, min: 1)
            try validate(self.jobName, name: "jobName", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$")
            try self.outputDataConfig.validate(name: "\(name).outputDataConfig")
            try validate(self.sourceLanguageCode, name: "sourceLanguageCode", parent: name, max: 5)
            try validate(self.sourceLanguageCode, name: "sourceLanguageCode", parent: name, min: 2)
            try self.targetLanguageCodes.forEach {
                try validate($0, name: "targetLanguageCodes[]", parent: name, max: 5)
                try validate($0, name: "targetLanguageCodes[]", parent: name, min: 2)
            }
            try validate(self.targetLanguageCodes, name: "targetLanguageCodes", parent: name, max: 1)
            try validate(self.targetLanguageCodes, name: "targetLanguageCodes", parent: name, min: 1)
            try self.terminologyNames?.forEach {
                try validate($0, name: "terminologyNames[]", parent: name, max: 256)
                try validate($0, name: "terminologyNames[]", parent: name, min: 1)
                try validate($0, name: "terminologyNames[]", parent: name, pattern: "^([A-Za-z0-9-]_?)+$")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken = "ClientToken"
            case dataAccessRoleArn = "DataAccessRoleArn"
            case inputDataConfig = "InputDataConfig"
            case jobName = "JobName"
            case outputDataConfig = "OutputDataConfig"
            case sourceLanguageCode = "SourceLanguageCode"
            case targetLanguageCodes = "TargetLanguageCodes"
            case terminologyNames = "TerminologyNames"
        }
    }

    public struct StartTextTranslationJobResponse: AWSDecodableShape {

        /// The identifier generated for the job. To get the status of a job, use this ID with the DescribeTextTranslationJob operation.
        public let jobId: String?
        /// The status of the job. Possible values include:    SUBMITTED - The job has been received and is queued for processing.    IN_PROGRESS - Amazon Translate is processing the job.    COMPLETED - The job was successfully completed and the output is available.    COMPLETED_WITH_ERRORS - The job was completed with errors. The errors can be analyzed in the job's output.    FAILED - The job did not complete. To get details, use the DescribeTextTranslationJob operation.    STOP_REQUESTED - The user who started the job has requested that it be stopped.    STOPPED - The job has been stopped.  
        public let jobStatus: JobStatus?

        public init(jobId: String? = nil, jobStatus: JobStatus? = nil) {
            self.jobId = jobId
            self.jobStatus = jobStatus
        }

        private enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case jobStatus = "JobStatus"
        }
    }

    public struct StopTextTranslationJobRequest: AWSEncodableShape {

        /// The job ID of the job to be stopped.
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        public func validate(name: String) throws {
            try validate(self.jobId, name: "jobId", parent: name, max: 32)
            try validate(self.jobId, name: "jobId", parent: name, min: 1)
            try validate(self.jobId, name: "jobId", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$")
        }

        private enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    public struct StopTextTranslationJobResponse: AWSDecodableShape {

        /// The job ID of the stopped batch translation job.
        public let jobId: String?
        /// The status of the designated job. Upon successful completion, the job's status will be STOPPED.
        public let jobStatus: JobStatus?

        public init(jobId: String? = nil, jobStatus: JobStatus? = nil) {
            self.jobId = jobId
            self.jobStatus = jobStatus
        }

        private enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case jobStatus = "JobStatus"
        }
    }

    public struct Term: AWSDecodableShape {

        /// The source text of the term being translated by the custom terminology.
        public let sourceText: String?
        /// The target text of the term being translated by the custom terminology.
        public let targetText: String?

        public init(sourceText: String? = nil, targetText: String? = nil) {
            self.sourceText = sourceText
            self.targetText = targetText
        }

        private enum CodingKeys: String, CodingKey {
            case sourceText = "SourceText"
            case targetText = "TargetText"
        }
    }

    public struct TerminologyData: AWSEncodableShape {

        /// The file containing the custom terminology data. Your version of the AWS SDK performs a Base64-encoding on this field before sending a request to the AWS service. Users of the SDK should not perform Base64-encoding themselves.
        public let file: Data
        /// The data format of the custom terminology. Either CSV or TMX.
        public let format: TerminologyDataFormat

        public init(file: Data, format: TerminologyDataFormat) {
            self.file = file
            self.format = format
        }

        public func validate(name: String) throws {
            try validate(self.file, name: "file", parent: name, max: 10485760)
        }

        private enum CodingKeys: String, CodingKey {
            case file = "File"
            case format = "Format"
        }
    }

    public struct TerminologyDataLocation: AWSDecodableShape {

        /// The location of the custom terminology data.
        public let location: String
        /// The repository type for the custom terminology data.
        public let repositoryType: String

        public init(location: String, repositoryType: String) {
            self.location = location
            self.repositoryType = repositoryType
        }

        private enum CodingKeys: String, CodingKey {
            case location = "Location"
            case repositoryType = "RepositoryType"
        }
    }

    public struct TerminologyProperties: AWSDecodableShape {

        ///  The Amazon Resource Name (ARN) of the custom terminology. 
        public let arn: String?
        /// The time at which the custom terminology was created, based on the timestamp.
        public let createdAt: TimeStamp?
        /// The description of the custom terminology properties.
        public let description: String?
        /// The encryption key for the custom terminology.
        public let encryptionKey: EncryptionKey?
        /// The time at which the custom terminology was last update, based on the timestamp.
        public let lastUpdatedAt: TimeStamp?
        /// The name of the custom terminology.
        public let name: String?
        /// The size of the file used when importing a custom terminology.
        public let sizeBytes: Int?
        /// The language code for the source text of the translation request for which the custom terminology is being used.
        public let sourceLanguageCode: String?
        /// The language codes for the target languages available with the custom terminology file. All possible target languages are returned in array.
        public let targetLanguageCodes: [String]?
        /// The number of terms included in the custom terminology.
        public let termCount: Int?

        public init(arn: String? = nil, createdAt: TimeStamp? = nil, description: String? = nil, encryptionKey: EncryptionKey? = nil, lastUpdatedAt: TimeStamp? = nil, name: String? = nil, sizeBytes: Int? = nil, sourceLanguageCode: String? = nil, targetLanguageCodes: [String]? = nil, termCount: Int? = nil) {
            self.arn = arn
            self.createdAt = createdAt
            self.description = description
            self.encryptionKey = encryptionKey
            self.lastUpdatedAt = lastUpdatedAt
            self.name = name
            self.sizeBytes = sizeBytes
            self.sourceLanguageCode = sourceLanguageCode
            self.targetLanguageCodes = targetLanguageCodes
            self.termCount = termCount
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case createdAt = "CreatedAt"
            case description = "Description"
            case encryptionKey = "EncryptionKey"
            case lastUpdatedAt = "LastUpdatedAt"
            case name = "Name"
            case sizeBytes = "SizeBytes"
            case sourceLanguageCode = "SourceLanguageCode"
            case targetLanguageCodes = "TargetLanguageCodes"
            case termCount = "TermCount"
        }
    }

    public struct TextTranslationJobFilter: AWSEncodableShape {

        /// Filters the list of jobs by name.
        public let jobName: String?
        /// Filters the list of jobs based by job status.
        public let jobStatus: JobStatus?
        /// Filters the list of jobs based on the time that the job was submitted for processing and returns only the jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
        public let submittedAfterTime: TimeStamp?
        /// Filters the list of jobs based on the time that the job was submitted for processing and returns only the jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
        public let submittedBeforeTime: TimeStamp?

        public init(jobName: String? = nil, jobStatus: JobStatus? = nil, submittedAfterTime: TimeStamp? = nil, submittedBeforeTime: TimeStamp? = nil) {
            self.jobName = jobName
            self.jobStatus = jobStatus
            self.submittedAfterTime = submittedAfterTime
            self.submittedBeforeTime = submittedBeforeTime
        }

        public func validate(name: String) throws {
            try validate(self.jobName, name: "jobName", parent: name, max: 256)
            try validate(self.jobName, name: "jobName", parent: name, min: 1)
            try validate(self.jobName, name: "jobName", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$")
        }

        private enum CodingKeys: String, CodingKey {
            case jobName = "JobName"
            case jobStatus = "JobStatus"
            case submittedAfterTime = "SubmittedAfterTime"
            case submittedBeforeTime = "SubmittedBeforeTime"
        }
    }

    public struct TextTranslationJobProperties: AWSDecodableShape {

        /// The Amazon Resource Name (ARN) of an AWS Identity Access and Management (IAM) role that granted Amazon Translate read access to the job's input data.
        public let dataAccessRoleArn: String?
        /// The time at which the translation job ended.
        public let endTime: TimeStamp?
        /// The input configuration properties that were specified when the job was requested.
        public let inputDataConfig: InputDataConfig?
        /// The number of documents successfully and unsuccessfully processed during the translation job.
        public let jobDetails: JobDetails?
        /// The ID of the translation job.
        public let jobId: String?
        /// The user-defined name of the translation job.
        public let jobName: String?
        /// The status of the translation job.
        public let jobStatus: JobStatus?
        /// An explanation of any errors that may have occured during the translation job.
        public let message: String?
        /// The output configuration properties that were specified when the job was requested.
        public let outputDataConfig: OutputDataConfig?
        /// The language code of the language of the source text. The language must be a language supported by Amazon Translate.
        public let sourceLanguageCode: String?
        /// The time at which the translation job was submitted.
        public let submittedTime: TimeStamp?
        /// The language code of the language of the target text. The language must be a language supported by Amazon Translate.
        public let targetLanguageCodes: [String]?
        /// A list containing the names of the terminologies applied to a translation job. Only one terminology can be applied per StartTextTranslationJob request at this time.
        public let terminologyNames: [String]?

        public init(dataAccessRoleArn: String? = nil, endTime: TimeStamp? = nil, inputDataConfig: InputDataConfig? = nil, jobDetails: JobDetails? = nil, jobId: String? = nil, jobName: String? = nil, jobStatus: JobStatus? = nil, message: String? = nil, outputDataConfig: OutputDataConfig? = nil, sourceLanguageCode: String? = nil, submittedTime: TimeStamp? = nil, targetLanguageCodes: [String]? = nil, terminologyNames: [String]? = nil) {
            self.dataAccessRoleArn = dataAccessRoleArn
            self.endTime = endTime
            self.inputDataConfig = inputDataConfig
            self.jobDetails = jobDetails
            self.jobId = jobId
            self.jobName = jobName
            self.jobStatus = jobStatus
            self.message = message
            self.outputDataConfig = outputDataConfig
            self.sourceLanguageCode = sourceLanguageCode
            self.submittedTime = submittedTime
            self.targetLanguageCodes = targetLanguageCodes
            self.terminologyNames = terminologyNames
        }

        private enum CodingKeys: String, CodingKey {
            case dataAccessRoleArn = "DataAccessRoleArn"
            case endTime = "EndTime"
            case inputDataConfig = "InputDataConfig"
            case jobDetails = "JobDetails"
            case jobId = "JobId"
            case jobName = "JobName"
            case jobStatus = "JobStatus"
            case message = "Message"
            case outputDataConfig = "OutputDataConfig"
            case sourceLanguageCode = "SourceLanguageCode"
            case submittedTime = "SubmittedTime"
            case targetLanguageCodes = "TargetLanguageCodes"
            case terminologyNames = "TerminologyNames"
        }
    }

    public struct TranslateTextRequest: AWSEncodableShape {

        /// The language code for the language of the source text. The language must be a language supported by Amazon Translate. For a list of language codes, see what-is-languages. To have Amazon Translate determine the source language of your text, you can specify auto in the SourceLanguageCode field. If you specify auto, Amazon Translate will call Amazon Comprehend to determine the source language.
        public let sourceLanguageCode: String
        /// The language code requested for the language of the target text. The language must be a language supported by Amazon Translate.
        public let targetLanguageCode: String
        /// The name of the terminology list file to be used in the TranslateText request. You can use 1 terminology list at most in a TranslateText request. Terminology lists can contain a maximum of 256 terms.
        public let terminologyNames: [String]?
        /// The text to translate. The text string can be a maximum of 5,000 bytes long. Depending on your character set, this may be fewer than 5,000 characters.
        public let text: String

        public init(sourceLanguageCode: String, targetLanguageCode: String, terminologyNames: [String]? = nil, text: String) {
            self.sourceLanguageCode = sourceLanguageCode
            self.targetLanguageCode = targetLanguageCode
            self.terminologyNames = terminologyNames
            self.text = text
        }

        public func validate(name: String) throws {
            try validate(self.sourceLanguageCode, name: "sourceLanguageCode", parent: name, max: 5)
            try validate(self.sourceLanguageCode, name: "sourceLanguageCode", parent: name, min: 2)
            try validate(self.targetLanguageCode, name: "targetLanguageCode", parent: name, max: 5)
            try validate(self.targetLanguageCode, name: "targetLanguageCode", parent: name, min: 2)
            try self.terminologyNames?.forEach {
                try validate($0, name: "terminologyNames[]", parent: name, max: 256)
                try validate($0, name: "terminologyNames[]", parent: name, min: 1)
                try validate($0, name: "terminologyNames[]", parent: name, pattern: "^([A-Za-z0-9-]_?)+$")
            }
            try validate(self.text, name: "text", parent: name, max: 5000)
            try validate(self.text, name: "text", parent: name, min: 1)
            try validate(self.text, name: "text", parent: name, pattern: "[\\P{M}\\p{M}]{1,5000}")
        }

        private enum CodingKeys: String, CodingKey {
            case sourceLanguageCode = "SourceLanguageCode"
            case targetLanguageCode = "TargetLanguageCode"
            case terminologyNames = "TerminologyNames"
            case text = "Text"
        }
    }

    public struct TranslateTextResponse: AWSDecodableShape {

        /// The names of the custom terminologies applied to the input text by Amazon Translate for the translated text response.
        public let appliedTerminologies: [AppliedTerminology]?
        /// The language code for the language of the source text.
        public let sourceLanguageCode: String
        /// The language code for the language of the target text. 
        public let targetLanguageCode: String
        /// The translated text.
        public let translatedText: String

        public init(appliedTerminologies: [AppliedTerminology]? = nil, sourceLanguageCode: String, targetLanguageCode: String, translatedText: String) {
            self.appliedTerminologies = appliedTerminologies
            self.sourceLanguageCode = sourceLanguageCode
            self.targetLanguageCode = targetLanguageCode
            self.translatedText = translatedText
        }

        private enum CodingKeys: String, CodingKey {
            case appliedTerminologies = "AppliedTerminologies"
            case sourceLanguageCode = "SourceLanguageCode"
            case targetLanguageCode = "TargetLanguageCode"
            case translatedText = "TranslatedText"
        }
    }
}
