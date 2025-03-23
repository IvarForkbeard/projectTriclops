//seed the random thing
function seedChoice(x){
    random_set_seed(x)
}

//check if the puzzle is complete
function puzzleComplete() {
    for (i = 0; i < 10; i ++) {
        for (j = 0; j < 10; j ++) {
            var focus = gridAt(i, j, now)
            if focus == entity.target || focus == entity.target + entity.player {
                return false
            }
        }
    }
    return true
}

//
//
//
//
//