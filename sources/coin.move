module moveTest::coin {
    use sui::coin;
    use sui::transfer;
    use sui::tx_context::{Self, TxContext};

    struct COIN has drop, key {}

    fun init(wit: COIN, ctx: &mut TxContext) {
        transfer::transfer(
            coin::create_currency(wit, ctx),
            tx_context::sender(ctx)
        )
    }
}