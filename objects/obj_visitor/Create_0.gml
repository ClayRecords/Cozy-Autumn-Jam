// order: list of potions / one potion
// tip: (correctness of potions + time)

order = undefined;

order_complete = false;
is_leaving = false;
is_entering = true;
movement_speed = 5;

tip = 1.5;

function complete_transaction(potion){
    if(order != potion){
        tip = 1;
        print("HOW DARE YOU ! ", "Ordered: ",order.name, "Gave : ", potion.name)
    }else{
        print("YIPPEEEE ! ", "Ordered: ",order.name, "Gave : ", potion.name)
    }
    obj_player.potion_held = undefined;
    order_complete = true;
}