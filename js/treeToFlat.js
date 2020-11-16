
function treeToFlat(tree, init = []) {
  return tree.reduce((acc, cur) => {
    if (cur.children && cur.children.length > 0) {
      return treeToFlat(cur.children, acc.concat([{...cur, children: null}]));
    } 
    return acc.concat([cur]);
    
  }, init);
}

