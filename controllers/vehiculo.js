const Sequelize = require('sequelize');
const vehiculo = require('../models').vehiculo;

module.exports = {
	/**
	 * Create a new juego
	 * 
	 * @param {*} req 
	 * @param {*} res 
	 */
	create(req, res) {
		return vehiculo
			.findOrCreate({
				where: {
					name: req.body.name,
				},
				defaults: {
					name: req.body.name,
					description: req.body.description,
					status: req.body.status
				}
			})
			.then(vehiculo => res.status(200).send(vehiculo))
			.catch(error => res.status(400).send(error))
	},

	/**
	 * Find all games
	 * 
	 * Example: SELECT * FROM usuarios
	 * 
	 * @param {*} _ 
	 * @param {*} res 
	 */
	list(_, res) {
		return vehiculo
			.findAll({})
			.then(vehiculo => res.status(200).send(vehiculo))
			.catch(error => res.status(400).send(error))
	},

	/**
	 * Find one user in the table games
	 * 
	 * Example: SELECT * FROM vehiculo WHERE name = 'Pac Man'
	 * 
	 * @param {*} req 
	 * @param {*} res 
	 */
	find(req, res) {
		return vehiculo
			.findOne({
				where: {
					name: req.body.name
				}
			})
			.then(vehiculo => res.status(200).send(vehiculo))
			.catch(error => res.status(400).send(error))
	}
}