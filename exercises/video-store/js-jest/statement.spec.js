import approvals from 'approvals';
import {statement} from "./statement";

test('characterizeStatement', () => {
    const movieTypes = ['new', 'regular', 'childrens'];
    const rentalDays = [1, 2, 3, 4];
    let results = '';

    for (let movieType of movieTypes) {
        for (let daysRented of rentalDays) {
            results += `[${movieType},${daysRented}] => ${generateStatement(movieType, daysRented)}\n`;
        }
    }

    approvals.verify(__dirname, 'characterizeStatement', results);
});

function generateStatement(movieType, daysRented) {
    const movies = {1: { code: movieType, title: 'Happy Gilmore' }};
    const customer = {
        rentals: [{ movieID: 1, days: daysRented }]
    };

    return statement(customer, movies);
}