import axios from "axios";
import { UserInterface } from "../models/UserModel"
import { BASE_URL } from "./config"

class UserService {
    async login(user: UserInterface) {
        const results = fetch(`${BASE_URL}/login`, {
            method: 'POST',
            body: JSON.stringify(user),
            mode: 'cors',
            headers: {
                'Content-Type': 'application/json'
            },
        })
        return results;
    }

    async register(user: UserInterface) {
        const results = fetch(`${BASE_URL}/register`, {
            method: 'POST',
            body: JSON.stringify(user),
            mode: 'cors',
            headers: {
                'Content-Type': 'application/json'
            },
        })
        return results;
    }

    async googleAuth(user:any) {
        const results = await axios.post(`${BASE_URL}/google/auth`, user);
        return results;
    }

}

export const userService = new UserService()