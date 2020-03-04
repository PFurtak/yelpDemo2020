const express = require('express');
const router = express.Router();
const restaurantModel = require('../models/restaModel');

/* GET home page. */
router.get('/', async function(req, res, next) {
  const data = await restaurantModel.getAllRestaurants();
  res.render('template', {
    locals: { title: 'Restaurants', data: data },
    partials: {
      partial: 'partial-index'
    }
  });
});

router.post('/', async function(req, res) {
  const { restaurantid, review_title, review_text } = req.body;
  const postData = await restaurantModel.addReview(
    restaurantid,
    review_title,
    review_text
  );
  console.log(postData);
  res.sendStatus(200);
});

module.exports = router;
