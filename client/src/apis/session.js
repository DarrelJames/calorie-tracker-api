import axios from 'axios'

const url = {
  development: 'http://localhost:3001',
  production: ''
}

const instance = axios.create({
  baseURL: 'url.production'
})

export default instance
