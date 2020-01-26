import axios from 'axios'
const url = {
  development: 'http://localhost:3001',
  production: ''
}
const instance = axios.create({
  baseURL: url.production
})
instance.interceptors.request.use(config => {
  const token = localStorage.getItem('token');
  config.headers.Authorization =  token ? `Bearer ${token}` : '';
  return config;
})


export default instance
