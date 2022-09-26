module moveTest::coin {
    use sui::coin;
    use sui::transfer;
    use sui::tx_context::{Self, TxContext};

    struct Coin has drop {}

    fun init(wit: Coin, ctx: &mut TxContext) {
        transfer::transfer(
            coin::create_currency(wit, ctx),
            tx_context::sender(ctx)
        )
    }

    // public entry fun transfer(c: Coin, recipient: address, _ctx: &mut TxContext) {
    // transfer::transfer(c,recipient)
    // }
    
    // public fun value(self: &Coin): u64 {
    //     self.value
    // }
}