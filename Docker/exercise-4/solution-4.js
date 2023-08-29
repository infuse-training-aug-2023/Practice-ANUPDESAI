const axios = require('axios');
const moment = require('moment');
url = process.env.env_url

const args = process.argv.slice(2);



const date = moment(args[0], 'DD-MM-YYYY');
const format = date.format('DD/MM/YYYY');

console.log(`Date: ${format}`)

  axios.get(url)
    .then(response => {
      console.log('API Response:', response.data);
    })
    .catch(error => {
      console.error('API Error:', error.message);
    });

