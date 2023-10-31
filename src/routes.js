import { Router } from 'express';
import { libro }  from './controller.js';

export const router = Router();

router.get('/libros/getAll', libro.getAll);
router.get('/libros/getOne/:isbn', libro.getOne);
router.post('/libros', libro.add);
router.delete('/libros/deleteISBN/:isbn', libro.deleteISBN);
router.delete('/libros/deleteID/:id', libro.deleteID);
router.put('/libros', libro.update);