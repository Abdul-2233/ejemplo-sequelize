'use strict';
const {
	Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
	class vehiculo extends Model {
		/**
		 * Helper method for defining associations.
		 * This method is not a part of Sequelize lifecycle.
		 * The `models/index` file will call this method automatically.
		 */
		static associate(models) {
			// define association here
		}
	};
	vehiculo.init({
		bastidor: {
			type: DataTypes.INTEGER,
		},
		modelo: {
			type: DataTypes.STRING,
		},
		anio: {
			type: DataTypes.CHAR,
		},
		color: {
			type: DataTypes.CHAR
		}
	}, {
		sequelize,
		modelName: 'vehiculo',
	});
	return vehiculo;
};