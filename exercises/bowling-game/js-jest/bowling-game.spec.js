import {BowlingGame} from "./bowling-game";

describe('BowlingGame', () => {
    it('should do the useful', () => {
        const game = new BowlingGame();

        expect(game.score()).toEqual(0);
    })
})