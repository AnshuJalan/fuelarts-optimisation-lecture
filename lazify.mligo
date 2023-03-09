type storage = {
    val_1: nat;
    val_2: nat;
    add: (nat * nat) -> nat;
}

type parameter = 
    | Change_val_1
    | Change_val_2

let change_val_1 (store: storage): storage =
    { 
        store with val_1 = store.add (store.val_1, store.val_2)
    }

let change_val_2 (store: storage): storage =
    { 
        store with val_2 = store.add (store.val_1, store.val_2)
    }

let main (action, store: parameter * storage) : operation list * storage =
    [], (match action with
        | Change_val_1 -> change_val_1 store
        | Change_val_2 -> change_val_2 store)