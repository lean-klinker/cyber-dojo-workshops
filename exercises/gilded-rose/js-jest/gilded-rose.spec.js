import {GildedRose} from "./gilded-rose";
import {Item} from "./item";
import approvals from 'approvals';

let items, gildedRose;

beforeEach(() => {
    items = [
        new Item("+5 Dexterity Vest", 10, 20),
        new Item("Aged Brie", 2, 0),
        new Item("Elixir of the Mongoose", 5, 7),
        new Item("Sulfuras, Hand of Ragnaros", 0, 80),
        new Item("Sulfuras, Hand of Ragnaros", -1, 80),
        new Item("Backstage passes to a TAFKAL80ETC concert", 15, 20),
        new Item("Backstage passes to a TAFKAL80ETC concert", 10, 49),
        new Item("Backstage passes to a TAFKAL80ETC concert", 5, 49),
    ];
    gildedRose = new GildedRose(items);
})

test('characterize update quality', () => {
    let result = '';
    for (let i = 0; i < 30; i++) {
        gildedRose.updateQuality();
        result += `${JSON.stringify(gildedRose.items)}\r`
    }

    approvals.verify(__dirname, 'gildedRose', result);
});
