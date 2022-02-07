// Controllers
const usuariosController = require('../controllers/usuarios');
const vehiculoController = require('../controllers/vehiculo');
const participationController = require('../controllers/participation');

module.exports = (app) => {

	app.get('/api', (req, res) => res.status(200).send({
		message: 'Buenisimo entramos en nuestra api',
	}));

	// Routes of Web Services
	// Users
	app.post('/api/usuarios/create/username/:username/status/:status', usuariosController.create);
	app.get('/api/usuarios/list/status/:status', usuariosController.list);
	app.get('/api/usuarios/find/username/:username', usuariosController.find);
	app.post('/api/usuarios/updateUser', usuariosController.updateUser);

	// Games
	app.post('/api/vehiculo/create', vehiculoController.create);
	app.get('/api/vehiculo/list', vehiculoController.list);
	app.get('/api/vehiculo/find', vehiculoController.find);

	// Participations
	app.post('/api/participaciones/create', participationController.create);
	app.get('/api/participaciones/list', participationController.list);

};