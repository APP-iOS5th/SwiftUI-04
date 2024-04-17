import Foundation
let connectionOK = true
let connectionSpeed = 30.00
let fileFound = true

// Localizable.strings(Korean) 예시
// "noConnection" = "연결이 없습니다."
// "lowBandwidth" = "속도가 느립니다."

enum FileTransferError: Error, LocalizedError {
    case noConnection
    case lowBandwidth
    case fileNotFound
    
    var errorDescription: String? {
        switch self {
        case .noConnection:
            return NSLocalizedString("noConnection", comment: "No Connetion")
        case .lowBandwidth:
            return NSLocalizedString("lowBandwidth", comment: "")
        case .fileNotFound:
            return NSLocalizedString("fileNotFound", comment: "")
        }
    }
}

func fileTransfer() throws {
    guard connectionOK else {
        throw FileTransferError.noConnection
    }
    
    guard connectionSpeed > 30 else {
        throw FileTransferError.lowBandwidth
    }
    
    guard fileFound else {
        throw FileTransferError.fileNotFound
    }
    // do something
}

func sendFile() -> String {
    
    defer {
        // 파일 닫기 등 종료 준비
        print("end of sendFile")
    }
    
    do {
        try fileTransfer()
    } catch FileTransferError.noConnection {
        return "Connection Problems"
    } catch FileTransferError.fileNotFound {
        return "File Not Found"
    } catch let error {
        return "Unknown error \(error.localizedDescription)"
    }
    return "Successful transfer"
}

print(sendFile())
