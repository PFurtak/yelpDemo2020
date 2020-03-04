const db = require('./conn');

class RestaurantModel {
  constructor(id, name, address, category) {
    this.id = id;
    this.name = name;
    this.address = address;
    this.category = category;
  }

  static async getAllRestaurants() {
    try {
      const resonse = await db.any(`SELECT *
          FROM restaurantv2;`);
      return resonse;
    } catch (error) {
      console.error('error: ', error);
      return error;
    }
  }
  static async getById(id) {
    try {
      const res = await db.any(`SELECT *
      FROM restaurantv2
      WHERE restaurantv2.id = ${id};`);
      console.log(res);
      return res;
    } catch (error) {
      console.error('ERROR: ', error);
    }
  }

  static async addReview(restaurantid, title, review) {
    try {
      const res = await db.one(
        `INSERT INTO review (reviewerid, restaurantid, title, review) VALUES ($1, $2, $3, $4) RETURNING id`,
        [2, restaurantid, title, review]
      );
    } catch (error) {
      console.error('ERROR: ', error);
      return error;
    }
  }
}

module.exports = RestaurantModel;
