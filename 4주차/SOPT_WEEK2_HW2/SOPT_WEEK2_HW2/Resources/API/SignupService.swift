//
//  SigninService.swift
//  SOPT_WEEK2_HW2
//
//  Created by Yunjae Kim on 2020/05/16.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import Foundation
import Alamofire


struct SignupService{

    static let shared = SignupService()

    private func makeParameter(_ id : String, _ password : String, _ name : String, _ email : String, _ phone : String ) -> Parameters {
        return ["id" : id, "password" : password, "name" : name, "email": email, "phone" : phone]

    }

    func signup(id: String, password : String, name : String, email : String, phone : String, completion : @escaping (NetworkResult<Any>)-> Void ){
        let header : HTTPHeaders = ["Content-Type" : "application/json"]

        let dataRequest = Alamofire.request(APIConstants.signupURL, method: .post, parameters: makeParameter(id, password, name, email, phone), encoding: JSONEncoding.default, headers: header)

        dataRequest.responseData{ dataResponse in
            switch dataResponse.result{
            case .success:
                guard let statusCode = dataResponse.response?.statusCode else {return}
                guard let data = dataResponse.value else {return}

                let networkResult = self.judge(by: statusCode, data)
                completion(networkResult)
            case .failure: completion(.networkFail)

            }
        }


    }

    private func judge(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        switch statusCode {
        case 200: return isSignUp(by: data)
        case 400: return .pathErr
        case 500: return .serverErr
        default: return .networkFail

        }
    }
    private func isSignUp(by data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(SigninData.self, from: data) else { return .pathErr }
        if (decodedData.success){
            print(decodedData.status)
            print(decodedData.message)
            return .success(data)
        }
        
        return .requestErr(decodedData.message)

    }

}
