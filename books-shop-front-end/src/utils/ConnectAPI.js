import axios from 'axios'
import Configure from './../constants/Configure'

export default function ConnectAPI(endpoint, method='GET', param){
    return axios({
        method:method,
        url: `${Configure.BASE_URL}/${endpoint}`,
        data:param
    }).catch(err => {
        console.log(err);
    })
}