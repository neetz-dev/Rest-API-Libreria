import {pool} from './database.js';

class LibrosController {
    async getAll(req, res){
        try {
            const [result] = await pool.query('SELECT * FROM libros');
            res.json(result);
        } catch (error){
            res.status(500).json({"Error": "Ocurrio un error al obtener los libros"});
        }
    }
    
    async getOne(req, res) {
        try {
            const libro = req.body;
            const [result] = await pool.query('SELECT * FROM libros WHERE ISBN = ?', [libro.ISBN]);
            if (result.length > 0) {
                res.json(result[0]);
            } else {
                res.status(404).json({"Error": "No se encontro el libro con el ISB ${libro.ISBN}"});
            }
        } catch (error) {
            res.status(500).json({"Error": "Ocurrio un error al obtener el libro"});
        }
    }

    async add(req, res) {
        try {
            const libro = req.body;
            const[result] = await pool.query(`INSERT INTO Libros(nombre, autor, categoria, aniopublicacion, ISBN) VALUES (?, ?, ?, ?, ?)`, [libro.nombre, libro.autor, libro.categoria, libro.aniopublicacion, libro.ISBN]);
            res.json({"ID insertado": result.insertId, "message": "Libro insertado exitosamente"});
        } catch (error) {
            res.status(500).json({"Error": "Ocurrio un error al agregar el libro"});
        }
    }
}



export const libro = new libro.LibrosController();