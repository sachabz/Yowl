import { axios } from './custom-axios';

export const myAxiosGet = (url) => {
    return axios.get(url)
        .then((r) => {
            console.log("error get", r.data);
            return r.data;
        })
        .catch((e) => {
            console.log(e);
            return e;
        });
}

export const myAxiosEdit = (url, nameEdited) => {
    return axios.put(
        url,
        nameEdited
    )
        .then((r) => {
            console.log(r.data);
            return r.data;
        })
        .catch((e) => {
            console.log(e);
            return e;
        });
}

export const myAxiosSave = (url, nameStored) => {

    return axios.post(
        url, nameStored
    )
        .then((r) => {
            console.log(r.data);
            return r.data;
        })
        .catch((e) => {
            console.log("saveCatch", e.response);
            return e;
        });
}

export const myAxiosDelete = (url) => {
    return axios.delete(
        url
    )
        .then((r) => {
            console.log(r.data);
            return r.data;
        })
        .catch((e) => {
            console.log(e);
            return e;
        });
}