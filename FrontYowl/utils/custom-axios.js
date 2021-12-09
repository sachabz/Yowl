import axios from "axios";

const instance = axios.create({
    baseURL: "http://monsite.fr/C-DEV-160-NCY-1-1-yowl-guillaume.gouilly-frossard/API/",
    auth: {
        username: "admin",
        password: "sacha"
    }
});

export { instance as axios };