// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Comprehend
public enum ComprehendError: AWSErrorType {
    case invalidRequestException(message: String?)
    case textSizeLimitExceededException(message: String?)
    case internalServerException(message: String?)
    case unsupportedLanguageException(message: String?)
    case batchSizeLimitExceededException(message: String?)
    case tooManyRequestsException(message: String?)
    case invalidFilterException(message: String?)
    case jobNotFoundException(message: String?)
}

extension ComprehendError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "TextSizeLimitExceededException":
            self = .textSizeLimitExceededException(message: message)
        case "InternalServerException":
            self = .internalServerException(message: message)
        case "UnsupportedLanguageException":
            self = .unsupportedLanguageException(message: message)
        case "BatchSizeLimitExceededException":
            self = .batchSizeLimitExceededException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "InvalidFilterException":
            self = .invalidFilterException(message: message)
        case "JobNotFoundException":
            self = .jobNotFoundException(message: message)
        default:
            return nil
        }
    }
}