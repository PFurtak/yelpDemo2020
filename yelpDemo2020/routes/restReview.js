const express = require('express'),
  router = express.Router(),
  restaurantModel = require('../models/restaModel');

router.get('/:id?', async (req, res, next) => {
  const id = req.params.id;
  const data = await restaurantModel.getById(id);

  res.render('template', {
    locals: {
      title: data[0].name,
      data: data
    },
    partials: {
      partial: 'partial-reviews'
    }
  });
});

module.exports = router;
