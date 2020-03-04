const express = require('express'),
  path = require('path'),
  cookieParser = require('cookie-parser'),
  logger = require('morgan'),
  es6Renderer = require('express-es6-template-engine');

const indexRouter = require('./routes/index'),
  reviewRouter = require('./routes/restReview');

const app = express();

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.engine('html', es6Renderer);
app.set('views', './views');
app.set('view engine', 'html');

app.use('/', indexRouter);
app.use('/reviews', reviewRouter);

module.exports = app;
