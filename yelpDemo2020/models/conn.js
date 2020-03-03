const options = {
  host: 'localhost',
  database: 'restaurantv2'
};

const pgp = require('pg-promise')({
  query: function(e) {
    console.log('QUERY:', e.query);
  }
});

const db = pgp(options);

module.exports = db;
