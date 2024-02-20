import jwt from 'jsonwebtoken'

export const validateToken = (token: string, publicKey: string) => {
  try {
    // NOTE:
    //   - algorithm for JWT of project scoped token is ES256
    //     ```jwt.verify(token, publicKey, { algorithms: ['ES256'] })```
    //   - isValid for project scoped token can be checked when we pass Elements public key
    jwt.verify(token, publicKey)

    return { isValid: true, isExpired: false }
  } catch (error) {
    if (error.name === 'TokenExpiredError') {
      return { isValid: false, isExpired: true }
    }

    return { isValid: false, isExpired: false }
  }
}
