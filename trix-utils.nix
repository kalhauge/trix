with builtins;
rec {
  get = set: path:
    if path == [] then set
    else let next = head path;
    in get (getAttr next set) (tail path);
  isPackage = set: 
    hasAttr "pname" set;
  getDescription = set: 
    get set [ "meta" "description" ];
}
    
