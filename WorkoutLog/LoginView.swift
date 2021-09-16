//
//  LoginView.swift
//  WorkoutLog
//
//  Created by 蘇健豪 on 2021/8/25.
//

import SwiftUI
import AuthenticationServices

struct LoginView: View {
    
    var body: some View {
        SignInWithAppleButton(.signIn) { request in
            request.requestedScopes = [.email, .fullName]
        } onCompletion: { result in
            switch result {
                case .success(let authorization):
                    print(authorization.credential)
                case .failure(let error):
                    print("Authorisation failed: \(error.localizedDescription)")
            }
        }
        .signInWithAppleButtonStyle(.black)
        .frame(width: 280, height: 50)
        .cornerRadius(28)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
