type storage = [@layout:comb] {
    val_1: nat;
    val_2: nat;
    val_3: nat;
    val_4: nat;
    val_5: nat;
    val_6: nat;
}

type parameter = 
    | Change_val


let change_val (store: storage): storage =
    { 
        store with val_5 = store.val_5 + 5n;
    }

let main (action, store: parameter * storage) : operation list * storage =
    [], (match action with
        | Change_val -> change_val store)