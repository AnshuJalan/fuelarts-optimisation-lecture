type storage = {
    val_1: nat;
    val_2: nat;
}

type parameter = 
    | Compute_on_stack of nat
    | Compute_off_stack of nat


let compute_off_stack (param: nat): storage = 
    { 
        val_1 = param + 5n; 
        val_2 = param + 5n 
    }


let compute_on_stack (param: nat): storage = 
    let x = param + 5n in
    { 
        val_1 = x; 
        val_2 = x
    }


let main (action, _: parameter * storage) : operation list * storage =
    [], (match action with
        | Compute_off_stack p -> compute_off_stack p
        | Compute_on_stack p -> compute_on_stack p)